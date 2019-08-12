# Tests case strategy

## 1. Test plan will consider this both types of testing
- Manually
- Automated

## 2. Which Functionalities/test cases would be manually or automatically tested;
- We should talk with:
  - Devs
  - PO/PM
  - Risk analyst
  - Other team members

Why: We should define togheter which scenarios should be automated in this moment, whici scenario can be automated as soon as possible.

Every strategy from Quality should involve all areas affected by bugs and problem,  to define the best way to quality assurance the product and process.

## 3. Security Considerations:
- XSS caused the login service crash and I can not login again, after few hour.
- Used Nessus Professional to validate Ports Scann, Web application scan and do not fund issues.
- OWASP ZED Attach to validate OWASP Top 10 risk. (Flags on Header are OK)


## 4. Automation Test:
For a good practice reason the Automation Tests was created separated by device-management project.
To run verify README.md file

## 5. Specification:
Its a good practice to use a collaborative framework for specification the system behavior.
This document is for everyone, any team member can update or create.
You can find on: features/common/devices.feature