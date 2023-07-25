// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

struct Connectivity {
    string _connectivity;
}

function initializeProvider(Connectivity memory connection_) pure {
    connection_._connectivity =
        'const provider=async()=>{if(typeof window.ethereum!=="undefined"){let provider=window.ethereum;if(window.ethereum.providers?.length){window.ethereum.providers.forEach((async p=>{if(p.isMetaMask)provider=p}))}await provider.request({method:"eth_requestAccounts",params:[]}).catch((error=>console.error(error)))}else{console.error("provider could not be detected")}};';
}

function read(Connectivity memory connection_) pure returns (string memory) {
    return connection_._connectivity;
}

using {initializeProvider, read} for Connectivity global;
