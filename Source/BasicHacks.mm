#include "UserMenu.h"
#include "../../ImGui/imgui.h"
#include <map>

// Khai báo các biến toàn cục (để test UI)
static bool isTeleportAuto = false;
static bool isTeleportButton = false;
static bool isMiniBoost = false;
static bool isThoatNhanh = false;
static bool isVoHanNitro = false;
static bool isNitroNhanh = false;
static bool isEcu3Luot = false;
static bool isGiaToc = false;
static bool isTuDuaXe = false;
static bool isAutoDuaLapTrinh = false;
static bool isKySinh = false;
static bool isFakeTen = false;
static bool isModSkin = false;
static bool isUnlockXeSkin = false;
static bool isModChiSoXe = false;

UserMenu& UserMenu::GetInstance() {
    static UserMenu instance;
    return instance;
}

void UserMenu::RenderingMenu() {
    // Set kích thước menu
    ImGui::SetNextWindowSize(ImVec2(380, 480), ImGuiCond_FirstUseEver);
    
    // Tạo cửa sổ menu
    if (ImGui::Begin("Zing Speed Mobile - Loc Lo", nullptr, ImGuiWindowFlags_NoCollapse)) {
        
        // Tạo Tab
        if (ImGui::BeginTabBar("MenuTabs")) {
            
            // ---------------- TAB FUNCTION ----------------
            if (ImGui::BeginTabItem("Function")) {
                ImGui::TextColored(ImVec4(1.0f, 0.8f, 0.0f, 1.0f), "admin se bo sung map thieu khi ban bao cao");
                ImGui::Spacing();

                ImGui::Text("Dua kin de bao ve acc cua ban");
                ImGui::Separator();

                // Cột trái
                ImGui::Columns(2, "hacks", false);
                ImGui::Checkbox("Teleport Auto", &isTeleportAuto);
                ImGui::Checkbox("Mini Boot", &isMiniBoost);
                ImGui::Checkbox("Vo Han Nitro", &isVoHanNitro);
                ImGui::Checkbox("ECU 3 Luot", &isEcu3Luot);
                ImGui::Checkbox("Gia Toc", &isGiaToc);
                ImGui::Checkbox("Auto Dua Lap Trinh", &isAutoDuaLapTrinh);

                ImGui::NextColumn();

                // Cột phải
                ImGui::Checkbox("Teleport Button", &isTeleportButton);
                ImGui::Checkbox("Thoat Nhanh", &isThoatNhanh);
                ImGui::Checkbox("Nitro Nhanh", &isNitroNhanh);
                ImGui::Checkbox("Tu Dua Xe", &isTuDuaXe);

                ImGui::EndColumns();

                ImGui::Separator();
                ImGui::Spacing();

                // Text trạng thái
                ImGui::TextColored(ImVec4(0.0f, 1.0f, 0.0f, 1.0f), "Trang thai: Dang tu dong dua theo lap trinh!");
                ImGui::Text("Map ID: 157 (Ho Long Tinh)");
                
                // Cái này giả lập Dropdown
                if (ImGui::TreeNode("Danh sach cac map dang thieu data")) {
                    ImGui::Text("Map 1...");
                    ImGui::Text("Map 2...");
                    ImGui::TreePop();
                }

                ImGui::Spacing();
                ImGui::Separator();

                // Hàng dưới
                ImGui::Columns(2, "hacks2", false);
                ImGui::Checkbox("Ky Sinh", &isKySinh);
                ImGui::Checkbox("Mod Skin", &isModSkin);
                ImGui::Checkbox("Mod chi so xe", &isModChiSoXe);
                
                ImGui::NextColumn();
                
                ImGui::Checkbox("Fake Ten", &isFakeTen);
                ImGui::Checkbox("Unlock Xe+Skin", &isUnlockXeSkin);

                ImGui::EndColumns();

                ImGui::EndTabItem();
            }
            
            // ---------------- TAB MORE ----------------
            if (ImGui::BeginTabItem("More")) {
                ImGui::Text("Cac tinh nang khac se duoc cap nhat sau...");
                ImGui::EndTabItem();
            }
            ImGui::EndTabBar();
        }
    }
    ImGui::End();
}
