<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class WelcomeUsersTest extends TestCase
{
    /** @test */
    function it_welcomes_users_with_nickname()
    {
        $this->get('saludo/Pablo/PapyrusFlexia')
        ->assertStatus(200)
        ->assertSee("Bienvenido Pablo, tu apodo es PapyrusFlexia");
    }

    /** @test */
    function it_welcomes_users_without_nickname()
    {
        $this->get('saludo/Pablo')
        ->assertStatus(200)
        ->assertSee("Bienvenido Pablo, no tienes apodo");
    }
}
