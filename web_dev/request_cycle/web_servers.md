What are some of the key design philosophies of the Linux operating system?
-Linux allows the user full access to the system. Anything can be changed via the command line, for good or bad, on purpose or accidental. 
-Linux doesn't provide any warning prompts when operating from the command line
-The major design philosophy is that linus is open source

What is a VPS? What are the advantages of a VPS?
A VPS is a virtual machine that can be used to host a web server. It doesn't physically exist, hence the term virtual machine. It may even be considered SaaS (Software as a service), based on the user paying for the creation and disk space a VPS takes up, and the cost of keeping the server up and running. 
Advantages in comparison to a physical server - lower overall cost, and they help fill in a gap in demand for people who need to have a web server, but may not need to pay for the physical hardware to run it. 

Why is it considered a bad idea to run programs as the root user on a Linux system?
Root is a sort of "super-user" that has full access to the system. If you run applications in root, then they in turn also have full access to the system. An example I saw cited explained that if a third party app crashes, you wouldn't want that app crash to bring down your whole system. I think as far as security goes as well, running apps in root would provide them access to your private data, which you may or may not want those apps tracking.

Here are properties I think would be interesting to change:
-onclick
-ondragover
-onemptied
-draggable
-onvolumechange