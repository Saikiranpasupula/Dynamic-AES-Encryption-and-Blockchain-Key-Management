# \# Secure File Management System

# 

# A Java-based secure file management system that protects sensitive data

# using AES encryption, SHA-256 integrity verification, and role-based access control.

# 

# \## Overview

# 

# Uploading sensitive files to shared environments creates risks of unauthorized

# access and data tampering. This system provides:

# 

# \- Data confidentiality through AES encryption

# \- Integrity verification using SHA-256 hashing

# \- Dynamic encryption key generation per file

# \- Role-based access for Admin, Manager, and Client users

# \- File approval workflow before access is granted

# 

# \## How It Works

# 

# 1\. Client registers and logs in securely

# 2\. Client uploads a file to the system

# 3\. System generates a unique AES key for that file

# 4\. File content is encrypted using AES before storage

# 5\. SHA-256 hash is generated as a file integrity fingerprint

# 6\. Manager reviews and approves the file

# 7\. Authorized client accesses and decrypts the file

# 8\. Hash is re-verified to confirm no tampering occurred

# 

# \## Security Properties

# 

# | Property | Mechanism |

# |----------|-----------|

# | Confidentiality | AES Encryption |

# | Integrity | SHA-256 Hashing |

# | Authentication | Login and Role-Based Control |

# | Key Management | Dynamic Key Generation per File |

# 

\## Project Structure
src/
===

# &#x20;

# └── com/

# 

# ├── client/       - Login, Registration, File Search

# 

# ├── manager/      - File Upload, Approval Workflow

# 

# ├── file/         - AES Key Generation, SHA-256 Hashing

# 

# ├── database/     - Database Connection

# 

# └── admin/        - Admin Module

# database/

# 

└── VC12.sql          - Database Schema

## Technologies Used
===

# 

# \- \*\*Language:\*\* Java

# \- \*\*Encryption:\*\* AES (Advanced Encryption Standard)

# \- \*\*Integrity:\*\* SHA-256 Cryptographic Hashing

# \- \*\*Database:\*\* MySQL

# \- \*\*IDE:\*\* Eclipse

# 

# \## Future Work

# 

# \- Integration of Homomorphic Encryption for computation over encrypted data

# \- Blockchain-based tamper-proof key storage

# \- Cloud deployment with end-to-end encryption

# \- Secure Multi-Party Computation support

# 

# \## Citation

# 

# If you use this project as a reference, please cite:

