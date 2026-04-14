package com.Test_2.Alt.controller;

import com.Test_2.Alt.dto.UserDto;
import com.Test_2.Alt.model.User;
import com.Test_2.Alt.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/auth")
public class AuthController {

    private final AuthService authService;

    @PostMapping("/register")
    public ResponseEntity<HttpStatus> register(@RequestBody UserDto userDto) {
        authService.register(userDto);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }
}
