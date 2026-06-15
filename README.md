# 🔐 Secure File Management System

# 

# A Java-based secure file management system that protects sensitive data using AES encryption, SHA-256 integrity verification, and role-based access control.

# 

# 📌 Overview

# 

# Uploading sensitive files to shared environments creates risks of unauthorized access and data tampering. This system solves that by providing:

# 

# &#x20;🔒 Data confidentiality through AES encryption  

# &#x20;🧾 Integrity verification using SHA-256 hashing  

# &#x20;🔑 Dynamic encryption key generation per file  

# &#x20;👥 Role-based access control (Admin, Manager, Client)  

# &#x20;✅ File approval workflow before access is granted  

# 

# ⚙️ How It Works

# 

# 1\. Client registers and logs in securely  

# 2\. Client uploads a file to the system  

# 3\. System generates a unique AES key for each file  

# 4\. File is encrypted using AES before storage  

# 5\. SHA-256 hash is generated as integrity fingerprint  

# 6\. Manager reviews and approves the file  

# 7\. Authorized client accesses and decrypts the file  

# 8\. Hash is re-verified to ensure no tampering  

# 

# 🛡️ Security Properties

# 

# | Property        | Mechanism                    |

# |---------------- |------------------------------|

# | Confidentiality | AES Encryption               |

# | Integrity       | SHA-256 Hashing              |

# | Authentication  | Login \& Role-Based Control   |

# | Key Management  | Dynamic Key Generation       |

# 

# 🗂️ Project Structure

src/

└── com/

├── client/ → Login, Registration, File Search

├── manager/ → File Upload, Approval Workflow

├── file/ → AES Key Generation, SHA-256 Hashing

├── database/ → Database Connection

└── admin/ → Admin Module



database/

└── VC12.sql → Database Schema




🧰 Technologies Used



\- \*\*Language:\*\* Java  

\- \*\*Encryption:\*\* AES (Advanced Encryption Standard)  

\- \*\*Integrity:\*\* SHA-256 Cryptographic Hashing  

\- \*\*Database:\*\* MySQL  

\- \*\*IDE:\*\* Eclipse  



🚀 Future Work



\- Homomorphic Encryption for computation on encrypted data  

\- Blockchain-based tamper-proof key storage  

\- Cloud deployment with end-to-end encryption  

\- Secure Multi-Party Computation (SMPC) support 



📚 Citation



If you use this project, please cite appropriately.

