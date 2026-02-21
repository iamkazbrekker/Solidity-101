// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Twitter{
    struct Tweet {
        address author;
        string message;
        uint256 timestamp;
        uint256 likes;
    }

    mapping(address => Tweet[]) public tweets;

    function createTweet(string memory _tweet) public{
        require(bytes(_tweet).length <= 280, "Hit the cap");
        Tweet memory newTweet = Tweet({
            author : msg.sender,
            message: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newTweet);
    }

    function getTweets(address _user, uint i) view public returns(Tweet memory){
        return tweets[_user][i];
    }
}