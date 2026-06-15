# \## Secure File Management System — AES Encryption \& SHA-256 Integrity Verification

# 

# > A Java-based secure file management system that protects sensitive data using

# > AES encryption, SHA-256 integrity verification, and role-based access control.

# 

# \---

# 

# \### Problem Statement

# Uploading sensitive files to shared environments creates risks of unauthorized access

# and data tampering. This system addresses data confidentiality, integrity verification,

# and secure key management for multi-user environments.

# 

# \---

# 

# \### System Architecture

# Client Login → File Upload → AES Key Generation → AES Encryption

# 

# ↓

# 

# SHA-256 Hash Generation

# 

# ↓

# 

# Database Storage

# 

# ↓

# 

# Manager Approval Workflow

# 

# ↓

# 

# Authorized Client Access + Decryption

# 

# \---

# 

# \### Features

# \- Dynamic AES key generation per file

# \- AES symmetric encryption for data confidentiality

# \- SHA-256 hash-based integrity verification

# \- Role-based access control — Admin, Manager, Client

# \- Secure user registration and authentication

# \- File approval workflow before access is granted

# \- Tamper detection through hash comparison

# 

# \---

# 

# \### Security Properties

# 

# | Property | Mechanism |

# |---|---|

# | Confidentiality | AES Encryption |

# | Integrity | SHA-256 Hashing |

# | Authentication | Login + Role Control |

# | Key Security | Dynamic Key Generation |

# 

# \---

# 

# \### Technologies

# `Java` `AES` `SHA-256` `MySQL` `Cryptography` `Role-Based Access Control`

# 

# \---

# 

# \### Project Structure

# src/

# 

# ├── com/client/      → Login, Registration, File Search

# 

# ├── com/manager/     → File Upload, Approval Workflow

# 

# ├── com/file/        → AES Key Generation, SHA-256 Hashing

# 

# ├── com/database/    → Database Connection

# 

# └── com/admin/       → Admin Module

# database/

# 

# └── VC12.sql         → Database Schema

# 

# \---

# 

# \### Future Scope

# \- Homomorphic Encryption for computation over encrypted data

# \- Blockchain-based tamper-proof key storage

# \- Cloud deployment with end-to-end encryption

# \- Differential privacy for access pattern protection

