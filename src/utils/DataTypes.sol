// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

interface DataTypes {
    enum JobStatus {
        Pending,
        InProgress,
        Completed,
        Cancelled
    }

    struct Profile {
        string name; // unique and immutable
        address walletAddress; // unique and immutable
        uint256 Reputation; // can be increased or decreased based on the user's activity
        uint256 balance;
        uint256 totalEarnings;
        uint256 totalJobsCompleted;
        uint256 totalJobsCancelled;
        bool isFreelancer;
        bool isClient;
        string ipfsCID; // for storing user's profile picture, skills, description, etc.
    }

    struct TrustedJudge {
        string name;
        address walletAddress;
        uint256 Reputation;
    }

    struct Job {
        address client;
        string title;
        string description;
        uint256 budget;
        uint256 deadline;
        uint256 status;
    }
}
