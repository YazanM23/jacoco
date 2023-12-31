@tag1
Feature: Login or register as a owner or tenant.

  Scenario: admin can login
    Given admin wants to sign in
    And enters "admin" as a username and enters "123456" as a password
    Then admin login success

  Scenario: successful login
    Given tenant or owner wants to login to the system
    And enters "Yazan5" as a username and "Yazan" as a password and both are correct
    Then login successful

  Scenario: failure login
    Given tenant or owner login to the system
    And enters "Yazan55" as a username and "Yazan55" as a password and one of them are wrong
    Then error appears

  Scenario: successful registration as a tenant or owner
    Given user wants to register as a tenant or owner
    And first name  = "yaser", second name = "yasin", lastname = "AbuAishe", Phone="0593220261", email = "yasermohammed@gmail.com", OwUser = "yaser yasinnn", OwPass = "11223344" for owner and username is available and used two database queries
    And first name  = "yaser", second name = "sameer", lastname = "AbuAishe", Phone="0593220268", email = "yaser@gmail.com", tenUser = "yaser samara", tenPass = "1234" for tenant and username is available and used two database queries
    Then registration complete and the account is created with username"yaser yasinnn" and password "11223344"

  Scenario: registration fail as a tenant or owner
    Given user wants to signup as a tenant or owner
    And tenUser = "yaser yasinnn", tenPass = "11223344" for tenant and usernames isn't available
    Then registration fails the account with username"yaser yasinnn" and password "11223344" isn't created