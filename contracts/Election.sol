pragma solidity 0.5.16;     // Currently running on 5.16 I did'nt change it to 8.0

contract Election {
    // Make a struct for Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Voters Mapping
    mapping(address => bool) public voters;
    
    // Candidate Mapping
    mapping(uint => Candidate) public candidates;
    // Candidates Count
    uint public candidatesCount;

    // voted event
    event votedEvent (uint indexed _candidateId);
    // Constructor for initalizing candidate Name
    constructor () public {
        addCandidate("Sir Qasim ");
        addCandidate("Sir Zeeshan");
        
    }

    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote (uint _candidateId) public {
        // A single person can only cast a vote for one time
        require(!voters[msg.sender]);
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // Voter has cast the vote
        voters[msg.sender] = true;

        // Candidate total votes
        candidates[_candidateId].voteCount ++;

        // voted event
        emit votedEvent(_candidateId);
    }
}