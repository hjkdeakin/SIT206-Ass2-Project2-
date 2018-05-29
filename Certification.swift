//  Certification.swift

// Import Required Modules
import Foundation
import UIKit

// Declare class
class Certification {
    // Attributes
    var name : String
    var description : String
    var examCode: String
    var examPrice: String
    var image : String
    var website : String
    
    // Constructor required when object is to be created
    init(theName : String, theDescription : String, theExamCode : String, theExamPrice : String, theImage : String, theWebsite : String) {
        self.name = theName
        self.description = theDescription
        self.examCode = theExamCode
        self.examPrice = theExamPrice
        self.image = theImage
        self.website = theWebsite
    }
}

class Utilities {
    static var certifications : [Certification] = [] // Declare an static array that can be called from outside class without creating a instance first
    static func loadCertifications() {
        // This method gets called so all certifications get loaded into the CertificationTableViewController
        // This is "hard coded" and objects are created when the app is executed.
        // It's not the prefered way to "store" data but we wanted to show difference between this and CoreData (two different ways to store data)
        // We have used CoreData in "My Certifications" feature
        certifications = [
            Certification(theName: "CompTIA A+ ", theDescription: "A+ (A Plus) is an entry-level computer certification for PC computer service technicians. The exam is designed to certify the competency of entry-level PC computer service professionals in installing, maintaining, customising, and operating personal computers.", theExamCode: "220-901 and 220-902", theExamPrice: "205 USD", theImage: "COMPTIA+", theWebsite: "https://certification.comptia.org/certifications/a"),
            
            Certification(theName: "Cisco CCNP", theDescription: "The CCNP Routing and Switching certification is appropriate for those with at least one year of networking experience who are ready to advance their skills and work independently on complex network solutions.", theExamCode: "300-135", theExamPrice: "200 USD", theImage: "CCNP", theWebsite: "http://www.cisco.com/c/en/us/training-events/training-certifications/certifications/professional/ccnp-routing-switching.html"),
            
            Certification(theName: "Cisco CCIE", theDescription: "CCIE® Routing and Switching certification is designed for network managers, professionals, senior network engineers and architects who are responsible for implementing and troubleshooting today’s complex converged networks in enterprise networking environments.", theExamCode: "400-101", theExamPrice: "1600 USD", theImage: "CCIE", theWebsite: "http://www.cisco.com/c/en/us/training-events/training-certifications/certifications/expert/ccie-routing-switching.html"),
            
            Certification(theName: "Cisco CCDP", theDescription: "Senior Network Design Engineers, Senior Analyst, and Principal Systems Engineers can advance their design expertise with a Cisco Certified Design Professional (CCDP) certification.", theExamCode: "200-125", theExamPrice: "200 USD", theImage: "CCDP", theWebsite: "https://learningnetwork.cisco.com/community/certifications/ccdp"),
            
            Certification(theName: "Cisco CCNA ", theDescription: "CCNA (Cisco Certified Network Associate) is an information technology (IT) certification from Cisco. CCNA certification is an associate-level Cisco Career certification", theExamCode: "200-125", theExamPrice: "250 USD", theImage: "CCNA", theWebsite: "http://www.cisco.com/c/en/us/training-events/training-certifications/certifications/associate/ccna-routing-switching.html"),
            
            Certification(theName: "MTA", theDescription: "Microsoft Technology Associate or MTA exams are exams that provide professional based certifications on Microsoft products and they provide the fundamentals for Databases (MSSQL Server), Development (Visual Studio) and IT Infrastructure (Windows, Windows Server)", theExamCode: "98-366", theExamPrice: "50 USD", theImage: "MTA", theWebsite: "https://www.microsoft.com/en-us/learning/mta-certification.aspx"),
            
            Certification(theName: "ACI", theDescription: "ACI Training Videos from previous live webinars, technical documents including free ACI eBooks, and open discussion forums on ACI related topics. These resources are here to help you accelerate your knowledge of Application Centric Data Networking environments and to unlock these powerful solutions.", theExamCode: "310-012Í", theExamPrice: "635 USD", theImage: "ACI", theWebsite: "https://learningnetwork.cisco.com/community/learning_center/aci-training-videos"),
            
            Certification(theName: "HDI", theDescription: "HDI offers training that aids individuals in preparing for the certification exams while building their knowledge and developing skills based on the certification standards. ", theExamCode: "65", theExamPrice: "195 USD", theImage: "HDI", theWebsite: "http://www.thinkhdi.com/"),
            
            Certification(theName: "OCM", theDescription: "Oracle Certified Master (OCM)", theExamCode: "12COCM", theExamPrice: "2400 USD", theImage: "OCM", theWebsite: "http://education.oracle.com/pls/web_prod-plq-dad/db_pages.getpage?page_id=609&get_params=dc:D94327,clang:EN"),
            
            Certification(theName: "ACMP", theDescription: "substantiates your comprehension of WLANs with more complex network settings in environments with multiple Mobility Controllers", theExamCode: "6.4", theExamPrice: "125 USD", theImage: "ACMP", theWebsite: "https://certification-learning.hpe.com/tr/datacard/Certification/Aruba-ACMPV64"),
            
            Certification(theName: "MCSD", theDescription: "The Microsoft Certified Solutions Developer is Microsoft's prevailing certification for programmers and application developers. Microsoft professionals are probably most familiar with its five MCSD credentials: Web Applications, SharePoint Applications, Azure Solutions Architect, Application Lifecycle Management and Universal Windows Platform.", theExamCode: "70-483", theExamPrice: "150 USD", theImage: "MCSD", theWebsite: "https://www.microsoft.com/en-us/learning/mcsd-app-builder-certification.aspx"),
            
            Certification(theName: "ACE", theDescription: "Assessment Certification Examination (ACE) website, which provides current, easily accessible information to principals, teachers, parents and students about the rules and procedures set by the Board of Studies, Teaching and Educational Standards NSW (BOSTES) for secondary education in New South Wales.", theExamCode: "9A0-383", theExamPrice: "499-699 USD", theImage: "ACE", theWebsite: "https://www.paloaltonetworks.com/services/education/ace"),
            
            Certification(theName: "OCPJP", theDescription: "Oracle's Certified Professional Java SE Programmer (OCPJP) exam is the fundamental exam required to demonstrate solid understanding of Java and some of its SE APIs and is a prerequisite to a number of the other Java certificates.", theExamCode: "310-065", theExamPrice: "245 USD", theImage: "OCPJP", theWebsite: "http://education.oracle.com/pls/web_prod-plq-dad/db_pages.getpage?page_id=654&get_params=p_id:157"),
            
            Certification(theName: "CSP", theDescription: "The Certified Safety Professional (CSP) is a certification offered by the Board of Certified Safety Professionals (BCSP).", theExamCode: "Add here", theExamPrice: "250 USD", theImage: "CSP", theWebsite: "http://www.bcsp.org/CSP"),
            
            Certification(theName: "ASE", theDescription: "Automotive Service Excellence (ASE) is a professional certification group that certifies professionals and shops in the automotive repair and service industry in the United States and parts of Canada. ", theExamCode: "Please add", theExamPrice: "39 USD", theImage: "ASE", theWebsite: "https://www.ase.com/Home.aspx"),
            
            Certification(theName: "MASE", theDescription: "MASE (from the French acronym for “Company Safety Improvement Plan”) certification is a management system whose aim is to ensure the constant and continuous improvement of companies' Health, Safety and Environment performance.", theExamCode: "Please add", theExamPrice: "350 USD", theImage: "MASE", theWebsite: "http://www.gocertify.com/certifications/hewlett-packard/hp-masterase.html"),
            
            Certification(theName: "MCSA", theDescription: "MCSA (Microsoft Certified Solutions Associate) is a certification program intended for people who seek entry-level jobs in an IT (information technology) environment. MCSA is a prerequisite for more advanced Microsoft certifications.", theExamCode: "70-410", theExamPrice: "150 USD", theImage: "MCSA", theWebsite: "https://www.microsoft.com/en-us/learning/mcsa-certification.aspx"),
            
            Certification(theName: "CSPO", theDescription: "Certified Scrum Product Owner (CSPO) is a certification initiated by the Scrum Alliance for professionals who have the ability to serve as excellent Product Owners for Scrum teams.", theExamCode: "Please add", theExamPrice: "100 USD", theImage: "CSPO", theWebsite: "https://www.scrumalliance.org/certifications/practitioners/cspo-certification/becoming-a-certified-scrum-product-owner"),
            
            Certification(theName: "CSD", theDescription: "Strengthen your technical skills in Agile software development. Certified Scrum Developers have demonstrated, through a combination of formal training and a technical skills assessment, that they have a working understanding of Scrum principles and have learned specialised Agile engineering skills.", theExamCode: "Please add", theExamPrice: "100 USD", theImage: "CSD", theWebsite: "https://www.scrumalliance.org/courses-events/course?type=Csd;"),
            
            Certification(theName: "CompTIA Project+", theDescription: "CompTIA Project+ certifies the knowledge and skills of professionals in project management. Project+ validates the ability to initiate, manage and support a project or business initiative.", theExamCode: "PK0-003", theExamPrice: "294 USD", theImage: "PROJECT+", theWebsite: "https://certification.comptia.org/certifications/project"),
            Certification(theName: "CompTIA IT Fundamentals", theDescription: " The CompTIA IT Fundamentals exam is designed to help you learn more about the world of information technology (IT). It’s ideal if you’re considering a career in IT or if you work in an allied field that requires a broad understanding of IT. CompTIA IT Fundamentals can also be a stepping stone to more advanced certifications such as CompTIA A+, and, with specialized experience, CompTIA Network+ and CompTIA Security+ ", theExamCode: "FC0-U51", theExamPrice: "115 USD", theImage: "CompTIAITFundamentals", theWebsite: "https://certification.comptia.org/certifications/it-fundamentals"),
            
            
            Certification(theName: "CompTIA CSA+" , theDescription: "CompTIA Cybersecurity Analyst (CSA+) is an international, vendor-neutral cybersecurity certification that applies behavioral analytics to improve the overall state of IT security.CSA+ validates critical knowledge and skills that are required to prevent, detect and combat cybersecurity threats." ,theExamCode: "CS0-001" ,  theExamPrice: "320 USD", theImage: "CSA", theWebsite: "https://certification.comptia.org/certifications/cybersecurity-analyst"),
            
            
            Certification(theName: "CompTIA Security+", theDescription: "CompTIA Security+ is the certification globally trusted to validate foundational, vendor-neutral IT security knowledge and skills. As a benchmark for best practices in IT security, this certification covers the essential principles for network security and risk management – making it an important stepping stone of an IT security career.", theExamCode: "SY0-401", theExamPrice: "320 USD", theImage: "CompTIASecurity", theWebsite: "https://certification.comptia.org/certifications/security"),
            
            
            Certification(theName: "CompTIA server+", theDescription: "Today’s IT environments demand planning, securing and maintaining a variety of server equipment. CompTIA Server+ certification validates IT professionals can do just that and more. As an industry-recognized credential, CompTIA Server+ helps boost the performance of IT professionals within businesses of all sizes.", theExamCode: "SK0-004", theExamPrice:"294 USD", theImage: "CompTIAserver", theWebsite: "https://certification.comptia.org/certifications/server"),
            
            
            Certification(theName: "CCSK", theDescription: "The Certificate of Cloud Security Knowledge (CCSK) provides evidence that an individual has successfully completed an examination covering the key concepts of the CSA guidance and ENISA whitepaper. ", theExamCode: "null", theExamPrice: "345 USD", theImage: "CCSK", theWebsite: "http://get.ccsk.eu/ccsk-training/?gclid=CjwKEAjw6e_IBRDvorfv2Ku79jMSJAAuiv9Y0rlECJyy51OdVxo28Re2fMOxx4Gsh4U_7v49OBvvNhoCn0Dw_wcB"),
            
            
            Certification(theName: "CASP", theDescription: "CompTIA Advanced Security Practitioner (CASP) meets the growing demand for advanced IT security in the enterprise. Recommended for IT professionals with at least 5 years of experience, CASP certifies critical thinking and judgment across a broad spectrum of security disciplines and requires candidates to implement clear solutions in complex environments.", theExamCode: "CAS-002", theExamPrice: "426 USD", theImage: "CASP", theWebsite: "https://certification.comptia.org/certifications/comptia-advanced-security-practitioner"),
            
            
            Certification(theName: "CISSP", theDescription: "Certified Information Systems Security Professional                            ", theExamCode: "null", theExamPrice: "599 USD", theImage: "CISSP", theWebsite: "https://www.isc2.org/cissp/default.aspx"),
            
            
            
            Certification(theName: "PMP", theDescription: "he Project Management Professional (PMP)® is the most important industry-recognized certification for project managers.", theExamCode: "null", theExamPrice: "405 USD", theImage: "PMP", theWebsite: "https://www.pmi.org/certifications/types/project-management-pmp"),
            
            
            Certification(theName: "PFMP", theDescription: "he Portfolio Management Professional (PfMP)® signifies your advanced competency in the coordinated management of one or more portfolios to achieve strategic objectives. ", theExamCode: "null", theExamPrice: "800 USD", theImage: "PFMP", theWebsite: "https://www.pmi.org/certifications/types/portfolio-management-pfmp"),
            
            
            Certification(theName: "ACCP", theDescription: "The Aruba Certified ClearPass Professional (ACCP)", theExamCode: "null", theExamPrice: "125 USD", theImage: "ACCP", theWebsite: "https://community.arubanetworks.com/aruba/attachments/aruba/training-certification-career/352/1/SG_ACCP.pdf"),
            
            
            
            Certification(theName: "RHCSA", theDescription: "A Red Hat® Certified System Administrator (RHCSA) ", theExamCode: "EX200", theExamPrice: "400 USD", theImage: "RHCSA", theWebsite: "https://www.redhat.com/en/services/certification/rhcsa"),
            
            
            Certification(theName: "CCA", theDescription: "Citrix Certified Associate – Virtualization (CCA – V) certification based on XenApp ", theExamCode: "1Y0-371", theExamPrice: "199 USD", theImage: "CCA", theWebsite: "http://www.pearsonvue.com/citrix/"),
            
            
            Certification(theName: "SCE", theDescription: "SUSE Certified Engineer (SCE) training covers more advanced day-to-day engineering level tasks in SUSE Linux Enterprise Server Environments.", theExamCode: "null", theExamPrice: "195 USD", theImage: "SCE", theWebsite: "https://training.suse.com/certification/sce-linux/"),
            
            
            
            Certification(theName: "CISM", theDescription: "CISM means higher earning potential and career advancement. Recent independent studies consistently rank CISM as one of the highest paying and sought after IT certifications. ", theExamCode: "null", theExamPrice: "545 USD", theImage: "CISM", theWebsite: "http://www.isaca.org/Certification/CISM-Certified-Information-Security-Manager/Pages/default.aspx"),
            
            
            Certification(theName: "CISA", theDescription: "Enhance your career by earning CISA—world-renowned as the standard of achievement for those who audit, control, monitor and assess information technology and business systems.", theExamCode: "null", theExamPrice: "545 USD", theImage: "CISA", theWebsite: "http://www.isaca.org/certification/cisa-certified-information-systems-auditor/pages/default.aspx"),
            
            
            Certification(theName: "CND", theDescription: "Certified Network Defender (CND) is a vendor-neutral, hands-on, instructor-led comprehensive network security certification training program.", theExamCode: "312-38", theExamPrice: "1899 USD", theImage: "CND", theWebsite: "https://www.eccouncil.org/programs/certified-network-defender-cnd/"),
            
            
            Certification(theName: "CEH", theDescription: "A Certified Ethical Hacker is a skilled professional who understands and knows how to look for weaknesses and vulnerabilities in target systems and uses the same knowledge and tools as a malicious hacker, but in a lawful and legitimate manner to assess the security posture of a target system(s). The CEH credential certifies individuals in the specific network security discipline of Ethical Hacking from a vendor-neutral perspective.", theExamCode: "312-50", theExamPrice: "500 USD", theImage: "CEH", theWebsite: "https://www.eccouncil.org/programs/certified-ethical-hacker-ceh/"),
            
            
            Certification(theName: "CSSLP", theDescription: "Certified Secure Software Lifecycle Professional", theExamCode: "null", theExamPrice: "595 USD", theImage: "CSSLP", theWebsite: "https://www.isc2.org/csslp/default.aspx"),
            
            
            Certification(theName: "CPTE", theDescription: "Certified Penetration Testing Engineer (CPTE) ", theExamCode: "null", theExamPrice: "250 USD", theImage: "CPTE", theWebsite: "http://www.gocertify.com/certifications/mile2/certified-pen-testing-specialist.html"),
        ]
    }
}
