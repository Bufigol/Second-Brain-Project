# 🧠 Contributing to Second Brain Framework

## 📋 Project Overview

Second Brain Framework is a cross-platform personal knowledge management application. Our goal is to empower users to capture, connect, and utilize their knowledge effectively. We welcome contributions from the community to help us achieve this.

## 🔧 Technology Stack

Here's the technology stack we are using for this project:

-   **Backend:** Ruby on Rails
-   **Databases:** MySQL, MongoDB
-   **Mobile:** Java (Android)
-   **Web:** JavaScript (React/Next.js)

## 🤝 Contribution Guidelines

We appreciate your interest in contributing to the Second Brain Framework! To ensure a smooth and collaborative process, please adhere to the following guidelines.

### 🌿 Development Workflow

1.  **Fork the repository:** Start by creating your own fork of the repository on GitHub.
2.  **Create a descriptive branch:** Before starting any work, create a new branch from the `main` branch with a clear name indicating the type of work and the feature/fix it addresses.

    ```bash
    git checkout -b [type]/[description]
    # Examples:
    # git checkout -b feature/semantic-connections
    # git checkout -b fix/note-sync-issue
    ```
3.  **Commit with structured message:** Use a structured format for your commit messages. This helps in understanding the changes and keeps the commit history clean.

    ```bash
    git commit -m "type(scope): brief description

    Detailed explanation if necessary.
    Closes #issue-number"
    ```

    **Example Commit Message:**

    ```
    git commit -m "fix(web): Resolve login error with invalid credentials

    This commit addresses a bug where users could not log in if they entered
    invalid credentials. It adds a proper error message for this scenario.
    Closes #123"
    ```

### Commit Types

We use the following commit types to classify changes:

-   `feat`: New feature
-   `fix`: Bug fix
-   `docs`: Documentation updates
-   `refactor`: Code improvements (without changing functionality)
-   `test`: Test modifications
-   `chore`: Maintenance tasks (build scripts, dependencies, etc.)

## 🎨 Language-Specific Guidelines

Please adhere to the following guidelines when working with specific technologies in our project.

### Ruby on Rails (Backend)

-   Follow the [Ruby Style Guide](https://rubystyle.guide/).
-   Use [RuboCop](https://docs.rubocop.org/) for linting to maintain code quality.
-   Write thorough RSpec tests to ensure robustness.
-   Implement RESTful API endpoints that adhere to best practices.
-   Utilize service objects for complex business logic to keep controllers thin.
-   Implement secure authentication mechanisms (e.g., JWT).

### JavaScript (Web Frontend)

-   Adhere to [React](https://reactjs.org/) and [Next.js](https://nextjs.org/) best practices.
-   Use ESLint for code quality and consistency.
-   Design components with reusability and modularity in mind.
-   Optimize your code for performance.
-   Ensure responsive and accessible UI.
-   Use appropriate state management tools (e.g., Redux, Context API).

### Java (Mobile App)

-   Follow [Android Development](https://developer.android.com/guide) standards.
-   Implement the [MVVM architecture](https://developer.android.com/topic/architecture/mvvm) for clear separation of concerns.
-   Write comprehensive unit and UI tests.
-   Optimize the application for mobile performance.
-   Ensure smooth data synchronization between the app and the backend.

### Database Practices

#### MySQL & MongoDB

-   Use meaningful and consistent naming conventions for tables/collections, columns/fields.
-   Implement efficient indexing strategies for performance.
-   Ensure data validation at the application level and/or database level.
-   Manage database schema changes using migrations.
-   Optimize database queries for performance.

## 🚨 Contribution Process

1.  **Open a GitHub Issue:** Before starting any significant work, please open a GitHub issue to discuss the proposed changes or bug fixes. This allows us to coordinate and ensure that your contributions align with the project's goals.
2.  **Discuss Proposed Changes:** Engage in discussions with the project maintainers and other contributors on the GitHub issue. Clarify requirements and explore possible implementation approaches.
3.  **Create a Pull Request (PR):** Once you are ready to submit your work, create a pull request against the `main` branch. Make sure to reference the associated GitHub issue in the PR description.
4.  **Pass Automated CI/CD Checks:** Your PR will be automatically subjected to CI/CD checks, including tests and linting. Ensure that all checks pass before requesting a review.
5.  **Complete Code Review:** Project maintainers will review your code. Be open to feedback and make necessary changes to address comments.
6.  **Merge After Approval:** Once the code review is complete and all comments are addressed, your PR will be merged into the `main` branch.

## 📦 Project Structure Reference

-   `sql_scripts/`: Contains SQL scripts for database setup and migrations.
-   `backend_rails/`: Houses the Ruby on Rails API backend.
-   `mobile_java/`: Contains the Java codebase for the Android mobile application.
-   `frontend_web/`: Holds the React-based web application code.
-   `project_misc/`: A collection of documentation, guidelines, and miscellaneous files.

## 🔍 Review Criteria

Your contributions will be reviewed based on the following criteria:

-   **Code Quality:** Is the code clean, well-organized, and easy to understand?
-   **Performance:** Is the implementation optimized for performance?
-   **Security:** Does the code follow security best practices?
-   **Test Coverage:** Are there sufficient unit and integration tests?
-   **Documentation:** Is the code well-documented, including inline comments and README updates?
-   **Architectural Consistency:** Does the implementation fit within the overall project architecture and conventions?

## 💡 Key Focus Areas

As you contribute, please consider these core areas of the application:

-   **Atomic Note Management:** Efficient creation, storage, and retrieval of atomic notes.
-   **Semantic Connections:** Establishing and utilizing semantic relationships between notes.
-   **Cross-Platform Synchronization:** Ensuring smooth and consistent data synchronization across web and mobile.
-   **Knowledge Capture Workflow:** Implementing an intuitive workflow for users to capture, organize, and utilize their knowledge.

---

🚀 We're excited to see your contributions! Let's build the future of personal knowledge management together!