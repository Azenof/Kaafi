
# 🎓 KAAFI – Low-Cost Niche Course Platform

<div align="center">
  
*Empowering Practical Skills Through Affordable Micro-Learning*

**Version:** 1.0 | **Date:** October 28, 2025 | **Status:** 📋 Active

[![GitHub](https://img.shields.io/badge/Status-Under%20Development-yellow)](https://github.com/)
[![License](https://img.shields.io/badge/License-MIT-blue)](https://github.com/)
[![Platform](https://img.shields.io/badge/Platform-Web%20%26%20Mobile-success)](https://github.com/)

</div>

## 📖 Table of Contents
- [Introduction](#introduction)
- [Project Scope](#project-scope)
- [System Overview](#system-overview)
- [Key Features](#key-features)
- [Technical Architecture](#technical-architecture)
- [Functional Requirements](#functional-requirements)
- [Non-Functional Requirements](#non-functional-requirements)
- [User Roles](#user-roles)
- [Development Stack](#development-stack)
- [Project Team](#project-team)

---

## 🎯 Introduction

### Purpose
KAAFI is an innovative online platform dedicated to selling **low-cost, practical micro-courses** that teach everyday and vocational skills. This Software Requirements Specification (SRS) document defines the functional and non-functional requirements to guide the development, testing, and deployment of the system.

### Vision
To create an accessible learning ecosystem where anyone can acquire practical skills at an affordable price, focusing on simplicity and low-bandwidth optimization.

---

## 🔭 Project Scope

KAAFI enables:

### For Instructors
- Create and sell short, affordable niche courses
- Examples: Fixing AC filters, basic plumbing, emergency safety skills
- Manage course content and track earnings

### For Students
- Browse, purchase, and learn practical skills
- Access short videos and step-by-step lessons
- Track learning progress

### For Administrators
- Manage users, transactions, and content quality
- Oversee platform operations
- Generate system reports

**Platform:** Web application with future mobile app support  
**Focus:** Lightweight, responsive, low-bandwidth optimized

---

## 🏗️ System Overview

### Core Components
| Component | Description |
|-----------|-------------|
| 👤 **User Management** | Registration, authentication, profile management |
| 📚 **Course System** | Creation, publishing, enrollment, and streaming |
| 💳 **Payment Gateway** | Secure low-cost transaction processing |
| ⭐ **Review System** | Ratings, reviews, and feedback |
| 🛠️ **Admin Dashboard** | Platform oversight and management |
| 🔍 **Discovery Engine** | Search, filtering, and recommendations |

---

## ✨ Key Features

### 🎓 **Course Management**
- Create/edit courses with videos, descriptions, and resources
- Course approval workflow
- Progress tracking for students
- Resume from last watched position

### 💰 **Affordable Pricing**
- All courses priced **under 1000 TK**
- Multiple payment options (Bkash, Nagad)
- Secure transaction handling

### 📱 **Accessibility**
- Optimized for low-bandwidth environments
- Simple UI for low-tech literacy users
- Mobile-responsive design
- WCAG 2.1 compliance

### 🔒 **Security**
- Secure authentication (phone-based)
- HTTPS data transmission
- PCI-DSS compliance for payments
- Regular security updates

---

## 🏗️ Technical Architecture

### Tech Stack

Frontend:
  - Primary: Kotlin/Flutter
  - Target: Web, iOS, Android

Backend:
  - Language: Kotlin/Java/python
  - Framework: Spring Boot / Ktor/FastApi/Flask
  - API: RESTful APIs
  - For now using supabase

Database:
  - Primary: Supabase Database

Storage:
  - Videos: AWS S3 / Cloud Storage/supabase storage
  - Files: Cloud-based storage

Infrastructure:
  - Cloud: AWS / Firebase / Azure/Supabase
  - CI/CD: GitHub Actions / Jenkins


### System Diagram
<img width="426" height="620" alt="image" src="https://github.com/user-attachments/assets/bd4b8267-9385-4928-b395-78546f767ddb" />

---

## 📋 Functional Requirements

### 👥 User Management (FR1-FR3)
- **FR1:** Phone-based registration
- **FR2:** Secure login/logout
- **FR3:** Profile management (photo, bio, etc.)

### 📚 Course Management (FR4-FR7)
- **FR4:** Instructor course CRUD operations
- **FR5:** Course structure (title, description, price, videos, files)
- **FR6:** Student enrollment and access
- **FR7:** Admin course approval/rejection

### 💳 Payment System (FR8-FR10)
- **FR8:** Secure payments (Bkash/Nagad integration)
- **FR9:** Transaction recording
- **FR10:** Refund processing

### 🎬 Course Viewing (FR11-FR13)
- **FR11:** Low-bandwidth video streaming
- **FR12:** Resume from last position
- **FR13:** Progress tracking

### ⭐ Ratings & Reviews (FR14-FR15)
- **FR14:** Rating and commenting system
- **FR15:** Average rating display

### 🔍 Search & Discovery (FR16-FR17)
- **FR16:** Search by keyword, instructor, category
- **FR17:** Filter by price, popularity, rating

### 🔔 Notifications (FR18)
- **FR18:** Email/push notifications for purchases and updates

### 🛠️ Admin Panel (FR19-FR20)
- **FR19:** Sales, user, and course reports
- **FR20:** User account management

---

## ⚡ Non-Functional Requirements

### 🚀 Performance
- **NFR1:** Page load time < 2 seconds average
- **NFR2:** Support 1000+ concurrent users

### 🔒 Security
- **NFR3:** Secure password hashing (bcrypt/Argon2)
- **NFR4:** HTTPS for all data transmission
- **NFR5:** Regular security audits

### 🎨 Usability
- **NFR6:** Intuitive UI for first-time users
- **NFR7:** WCAG 2.1 accessibility compliance
- **NFR8:** Mobile-responsive design

### 🛡️ Reliability
- **NFR9:** 99.5% system uptime
- **NFR10:** Daily automated database backups
- **NFR11:** Error monitoring and logging

### 🧩 Maintainability
- **NFR12:** Modular, well-documented code
- **NFR13:** API versioning support
- **NFR14:** Comprehensive testing suite

---

## 👥 User Roles

| Role | Description | Access Level | Key Permissions |
|------|-------------|--------------|-----------------|
| **👨‍🎓 Student** | Learns practical skills | 🔓 Low | Browse, purchase, watch courses, rate & review |
| **👨‍🏫 Instructor** | Creates and sells courses | 🔑 Medium | Create/manage courses, view earnings, track students |
| **👑 Admin** | Manages platform operations | 🔐 High | User management, course approval, system reports, settings |

---

## 📊 Operating Environment

### Supported Platforms

🌐 Web Browsers:
   - Chrome (latest)
   - Safari (latest)
   - Edge (latest)
   - Firefox (latest)

📱 Mobile:
   - Android 8.0+
   - iOS 13+


### Infrastructure Requirements

☁️ Cloud Services:
   - AWS / Google Cloud / Azure /Supabase
   - Firebase/Supabase for authentication (optional)
   - CDN for video delivery

🗄️ Database:
   - PostGreSql
   - Regular backup system

📦 Storage:
   - Video: Cloud storage with CDN
   - Static: Object storage


---

## ⚠️ Constraints & Dependencies

### Constraints
- Courses must be priced under **1000 TK**
- Must comply with **PCI-DSS** for payments
- UI must be simple for low-tech literacy users
- Must function in low-bandwidth environments

### Dependencies
- Third-party payment APIs (Bkash, Nagad)
- Internet connectivity for users
- Cloud service providers
- Video encoding services

---

## 🚀 Getting Started

### Prerequisites
-  Dart 3.5
- Flutter for frontend
- Supabase Account
- Git

# Backend setup


# Frontend setup
flutter pub get
flutter run


---

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


<div align="center">

### 🌟 Star us on GitHub if you find this project useful!

**"Empowering practical skills, one micro-course at a time."**

[⬆ Back to Top](#-kaafi--low-cost-niche-course-platform)

</div>

