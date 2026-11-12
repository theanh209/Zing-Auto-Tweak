#include "UserMenu.h"
#include "../../ImGui/imgui.h"
#import "../../Source/BasicHacks.h" // Import để lấy biến trạng thái

UserMenu& UserMenu::GetInstance() {
    static UserMenu instance;
    return instance;
}

void UserMenu::RenderingMenu() {
    // Cố định vị trí và kích thước menu cho đẹp
    ImGui::SetNextWindowSize(ImVec2(380, 480), ImGuiCond_FirstUseEver);
    
    if (ImGui::Begin("Zing Speed Mobile - Loc Lo", nullptr, ImGuiWindowFlags_NoCollapse)) {
        
        if (ImGui::BeginTabBar("MenuTabs")) {
            
            // ---------------- TAB FUNCTION ----------------
            if (ImGui::BeginTabItem("Function")) {
                ImGui::TextColored(ImVec4(1.0f, 0.8f, 0.0f, 1.0f), "admin se bo sung map thieu khi ban bao cao");
                ImGui::Spacing();

                ImGui::Text("Dua kin de bao ve acc cua ban");
                ImGui::Separator();

                ImGui::Columns(2, "hacks", false);
                
                // Cột trái - Các nút bấm sẽ đổi màu khi check
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

                // Hiển thị trạng thái động (Real-time status)
                ImGui::TextColored(ImVec4(0.0f, 1.0f, 0.0f, 1.0f), "Trang thai: Dang tu dong dua theo lap trinh!");
                ImGui::Text("Map ID: 157 (Ho Long Tinh)");
                
                // Hiển thị ông nào đang bật
                ImGui::TextColored(ImVec4(0.5f, 0.5f, 1.0f, 1.0f), "Dang bat:");
                if(isVoHanNitro) ImGui::SameLine(), ImGui::Text("Nitro");
                if(isMiniBoost) ImGui::SameLine(), ImGui::Text("MiniBoost");
                if(isTeleportAuto) ImGui::SameLine(), ImGui::Text("TPAuto");

                ImGui::Spacing();
                ImGui::Separator();

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

        // Nút Build Info ở dưới cùng để test bấm
        ImGui::Separator();
        if (ImGui::Button("Test Bam Nut (In ra console)")) {
            NSLog(@"[R] Freddy vua bam nut Test!");
            // Có thể gọi hàm gì đó ở đây
        }
    }
    ImGui::End();
}
