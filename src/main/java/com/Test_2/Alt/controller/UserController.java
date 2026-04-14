package com.Test_2.Alt.controller;

import com.Test_2.Alt.dto.UserDto;
import com.Test_2.Alt.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class UserController {

    private final UserService userService;

//    @PostMapping("/register")
//    public HttpStatus registerUser(@RequestBody UserDto userDto){
//        userService.save(userDto);
//        return HttpStatus.CREATED;
//    }

    @GetMapping("/user")
    public ResponseEntity<UserDto> getUser(@RequestParam() String email){
        return ResponseEntity.ok(userService.getUserByEmail(email));
    }

}
