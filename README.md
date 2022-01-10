# Final-Project
Final Project for PIAIC Quater 4
# Master Barnch 
Whole of the code was incidentaly pushes to master branch 
# Dependencies
- NPM  
- Truffle    (Give a complete enviroment for Dapps)  
- Ganache    (Set-up Local Blockchain on your mahine)  
- Meta Mask  (Connecting your Browser to Blockchain)  

# How to use this code
- git clone https://github.com/FaisalRashidB/Final-Project  
- git checkout master    (Code push to master branch instead of main)  
- cd Final-project  
- npm install  
- Open Ganache  and setup  
- truffle migrate --reset  
- Config meta mask  
- npm run dev  
# Note 
- I make election app which menstion in Syllabus for final project.  
- In election.js file i use web3.currentProvider.enable() for getting account. You can also use web3.eth.getCoinbase.  
# If you are using solidity compiler version below than 5.
- Remove Memory specifer in addCandidate function  
- Convert constructor into function with same name as contract.  
- Handle event according to compiler version.  
