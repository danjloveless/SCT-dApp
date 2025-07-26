# Small Cap Token (SCT) DApp

A full-stack decentralized application for managing the Small Cap Token (SCT), an ERC20 token with enhanced features including minting, burning, and pausability controls.

## Overview

This project consists of:
- **Frontend**: React application for interacting with the smart contract
- **Smart Contracts**: Solidity contracts deployed on Ethereum
- **Development Environment**: Hardhat for testing, deployment, and local development

## Smart Contract Features

The **SmallCapToken** contract implements:

- **ERC20 Standard**: Full compliance with ERC20 token standard
- **Initial Supply**: 21,000,000 SCT tokens
- **Minting**: Owner can mint additional tokens
- **Burning**: Token holders can burn their tokens
- **Pausable**: Owner can pause/unpause all token transfers
- **Ownable**: Access control for administrative functions

### Token Details
- **Name**: Small Cap Token
- **Symbol**: SCT  
- **Decimals**: 18
- **Initial Supply**: 21,000,000 SCT

## Prerequisites

- Node.js (v14 or higher)
- npm or yarn
- MetaMask wallet
- Git

## Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd small-cap-token-dapp
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env
   ```
   
   Fill in your environment variables:
   ```env
   INFURA_PROJECT_ID=your_infura_project_id
   PRIVATE_KEY=your_private_key_without_0x
   ETHERSCAN_API_KEY=your_etherscan_api_key
   ```

## Development

### Frontend Development

1. **Start the React development server**
   ```bash
   npm start
   ```
   
   The app will open at [http://localhost:3000](http://localhost:3000)

2. **Build for production**
   ```bash
   npm run build
   ```

3. **Run tests**
   ```bash
   npm test
   ```

### Smart Contract Development

1. **Compile contracts**
   ```bash
   npx hardhat compile
   ```

2. **Run tests**
   ```bash
   npx hardhat test
   ```

3. **Deploy to local network**
   ```bash
   npx hardhat node
   # In another terminal:
   npx hardhat run scripts/deploy.js --network localhost
   ```

4. **Deploy to Sepolia testnet**
   ```bash
   npx hardhat run scripts/deploy.js --network sepolia
   ```

## Project Structure

```
├── contracts/              # Solidity smart contracts
│   └── SmallCapToken.sol   # Main ERC20 token contract
├── test/                   # Smart contract tests
│   └── Lock.js            # Test files
├── scripts/                # Deployment scripts
├── src/                    # React frontend source
├── public/                 # Static assets
├── artifacts/              # Compiled contract artifacts
├── hardhat.config.js       # Hardhat configuration
├── package.json           # Project dependencies
└── README.md              # This file
```

## Smart Contract Functions

### Public Functions

- `mint(address to, uint256 amount)` - Owner only: Mint new tokens
- `burn(uint256 value)` - Burn your own tokens
- `burnFrom(address account, uint256 value)` - Burn tokens from allowance
- `pause()` - Owner only: Pause all transfers
- `unpause()` - Owner only: Resume all transfers
- `transfer(address to, uint256 amount)` - Standard ERC20 transfer
- `approve(address spender, uint256 amount)` - Standard ERC20 approval

### View Functions

- `totalSupply()` - Get total token supply
- `balanceOf(address account)` - Get account balance
- `allowance(address owner, address spender)` - Get allowance amount
- `paused()` - Check if contract is paused
- `owner()` - Get contract owner address

## Frontend Features

The React application provides:

- **Wallet Connection**: Connect/disconnect MetaMask wallet
- **Token Information**: Display token details and your balance
- **Transfer Tokens**: Send SCT tokens to other addresses
- **Approve Allowances**: Set spending allowances for other addresses
- **Owner Functions**: If you're the owner, access minting and pause controls
- **Transaction History**: View your recent transactions

## Testing

The project includes comprehensive tests for the smart contract:

```bash
# Run all tests
npm test

# Run smart contract tests
npx hardhat test

# Run tests with gas reporting
REPORT_GAS=true npx hardhat test
```

## Deployment

### Testnet Deployment (Sepolia)

1. Ensure you have Sepolia ETH for gas fees
2. Update your `.env` file with the required API keys
3. Run the deployment script:
   ```bash
   npx hardhat run scripts/deploy.js --network sepolia
   ```

### Mainnet Deployment

⚠️ **Warning**: Only deploy to mainnet after thorough testing

1. Update hardhat.config.js with mainnet configuration
2. Ensure you have sufficient ETH for gas fees
3. Run deployment with mainnet network

## Security Considerations

- The contract uses OpenZeppelin's audited contracts
- Owner functions are protected by access controls
- Pausable functionality allows emergency stops
- All functions include proper error handling

## Environment Variables

Create a `.env` file with:

```env
INFURA_PROJECT_ID=your_infura_project_id
PRIVATE_KEY=your_private_key_without_0x_prefix
ETHERSCAN_API_KEY=your_etherscan_api_key
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Ensure all tests pass
6. Submit a pull request

## License

This project is licensed under the MIT License.

## Support

For questions or support, please:
- Check the documentation
- Review existing issues
- Create a new issue if needed

## Roadmap

- [ ] Add staking functionality
- [ ] Implement governance features
- [ ] Multi-signature wallet support
- [ ] Advanced token metrics dashboard
- [ ] Mobile app development

---

**Disclaimer**: This project is for educational/development purposes. Always conduct thorough testing and security audits before deploying to mainnet.
