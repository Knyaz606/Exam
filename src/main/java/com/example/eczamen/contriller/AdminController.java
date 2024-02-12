package com.example.eczamen.contriller;

import com.example.eczamen.models.User;
import com.example.eczamen.models.enums.Role;
import com.example.eczamen.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.persistence.PrePersist;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
public class AdminController {
    private final UserService userService;

    @GetMapping("/admin")
    public String amin(Model model){
        model.addAttribute("user", userService.list());
        return "admin";
    }
@PostMapping("/admin/user/ban/{id}")
    public String userBan(@PathVariable("id") Long id){
        userService.banUser(id);
        return "redirect:/admin";
    }
    @GetMapping("/admin/user/ban/{user}")
    public String userEdit(@PathVariable("user")User user,Model model){
        model.addAttribute("User",user);
        model.addAttribute("roles", Role.values());
        return "user-edit";
    }

    //Редактирование юзера
    @PostMapping("/admin/user/edit")
    public String userEdit(@RequestParam("userId") User user,@RequestParam Map<String, String> form) {
        userService.changeUserRoles(user, form);
        return "redirect:/admin";
    }
}
