# \# Secure File Management System using AES Encryption and SHA-256 Integrity Verification

# 

# \## Overview

# 

# A secure cloud-based file management system that protects sensitive data using

# cryptographic techniques. The system ensures data confidentiality through AES

# encryption and verifies file integrity using SHA-256 hashing, with role-based

# access control for secure multi-user environments.

# 

# \---

# 

# \## Problem Statement

# 

# Uploading sensitive files to shared or cloud environments introduces privacy

# risks including unauthorized access, data tampering, and key exposure.

# 

# This project addresses:

# \- Data confidentiality during file storage and transfer

# \- Integrity verification to detect unauthorized modifications

# \- Secure key management using dynamically generated encryption keys

# \- Role-based access control for Admin, Manager, and Client users

# 

# \---

# 

\## System Architecture
Client
===

# 

# |

# 

# |-- Registration / Login (Authentication)

# 

# |

# 

# v

# 

# File Upload Module

# 

# |

# 

# v

# 

# AES Key Generation (Dynamic Key per file)

# 

# |

# 

# v

# 

# AES Encryption (File content encrypted)

# 

# |

# 

# v

# 

# SHA-256 Hash Generation (Integrity fingerprint)

# 

# |

# 

# v

# 

# Secure Database Storage

# 

# |

# 

# v

# 

# Manager Approval Workflow

# 

# |

# 

# v

# 

# Authorized Client Access + Decryption

# 

# \---

# 

# \## Features

# 

# \- Dynamic AES key generation for each file upload

# \- AES symmetric encryption ensuring data confidentiality

# \- SHA-256 hash-based integrity verification

# \- Role-based access: Admin, Manager, Client

# \- Secure user registration and authentication

# \- File approval workflow before access is granted

# \- Tamper detection through hash comparison

# 

# \---

# 

# \## Security Goals

# 

# | Property       | Mechanism              |

# |----------------|------------------------|

# | Confidentiality | AES Encryption        |

# | Integrity       | SHA-256 Hashing       |

# | Authentication  | Login + Role Control  |

# | Key Security    | Dynamic Key Generation|

# 

# \---

# 

# \## Technologies Used

# 

# \- \*\*Language:\*\* Java

# \- \*\*Encryption:\*\* AES (Advanced Encryption Standard)

# \- \*\*Integrity:\*\* SHA-256 Cryptographic Hashing

# \- \*\*Database:\*\* MySQL

# \- \*\*Key Management:\*\* Dynamic Random Key Generation

# 

# \---

# 

# \## Project Structure

# src/

# 

# ├── com/admin/          → Admin module

# 

# ├── com/client/         → Client registration, login, file search

# 

# ├── com/manager/        → File upload and approval

# 

# ├── com/file/           → AES key generation, SHA-256 hashing

# 

# ├── com/database/       → Database connection

# 

# └── com/bean/           → Utility classes

# database/

# 

# └── VC12.sql            → Database schema

# 

# \---

# 

# \## How It Works

# 

# 1\. Client registers and logs in securely

# 2\. Client uploads a file

# 3\. System generates a dynamic AES key for that file

# 4\. File is encrypted using AES before storage

# 5\. SHA-256 hash is generated to record file fingerprint

# 6\. Manager reviews and approves the file

# 7\. Authorized client accesses and decrypts the file

# 8\. Hash is re-verified to confirm file integrity

# 

# \---

# 

# \## Future Improvements

# 

# \- Integration of Homomorphic Encryption for computation over encrypted data

# \- Blockchain-based key storage for tamper-proof key management

# \- Cloud deployment with end-to-end encrypted storage

# \- Differential privacy for access pattern protection

# \- Secure Multi-Party Computation for collaborative file processing

# 

# \---

# 

# \## Relevance to Privacy-Preserving Computing

# 

# This project demonstrates foundational concepts in:

# \- Cryptographic data protection

# \- Secure key lifecycle management

# \- Integrity verification protocols

# \- Privacy-aware system design

# 

# These are stepping stones toward advanced privacy-preserving techniques

# including Homomorphic Encryption and Secure Computation.

