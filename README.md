# Lily Adoption Website

A beautiful, responsive single-page website created to help find a loving home for Lily, a sweet Dachshund mix.

## About the Project

This is a static website featuring Lily, a gentle black Dachshund mix with a white chest, who is looking for a new home due to family circumstances. The website showcases beautiful photos of Lily and provides detailed information about her personality, health status, and ideal home environment.

The site is designed in Portuguese (Brazil) and includes:
- Responsive design optimized for mobile, tablet, and desktop
- Photo gallery with hover effects
- Detailed information about Lily's characteristics
- WhatsApp contact integration for adoption inquiries
- Social media meta tags for sharing on Facebook, Twitter, and WhatsApp

## Features

- Clean, modern design with gradient backgrounds
- Mobile-responsive layout
- Photo grid with 4 images of Lily
- Comprehensive dog profile including:
  - Breed and appearance
  - Personality traits
  - Vaccination and spay/neuter status
  - Ideal family type
- Direct WhatsApp contact button
- Print-friendly CSS

## Quick Start

### Using Docker Hub (Recommended)

Pull and run the pre-built image from Docker Hub:

```bash
# Pull and run the latest image
docker run -d -p 8080:80 rmcampos/lily-adoption:latest
```

Then open your browser and navigate to `http://localhost:8080`

### Building Locally

You can also build the Docker image yourself:

```bash
# Build the Docker image
docker build -t lily-adoption .

# Run the container
docker run -d -p 8080:80 lily-adoption
```

Then open your browser and navigate to `http://localhost:8080`

### Without Docker

Simply open the `index.html` file in any web browser:

```bash
open index.html
```

Or serve it with any static web server.

## Project Structure

```
lily-adoption/
├── .github/
│   └── workflows/
│       └── docker-build-push.yml  # CI/CD workflow
├── Dockerfile          # Docker configuration for nginx
├── index.html          # Main website file
├── lili1.jpeg         # Photo of Lily
├── lili2.jpeg         # Photo of Lily
├── lili3.jpeg         # Photo of Lily
├── lili4.jpeg         # Photo of Lily
├── LICENSE            # Project license
└── README.md          # This file
```

## Technologies Used

- HTML5
- CSS3 (with animations and responsive design)
- Docker (nginx:alpine)
- GitHub Actions (CI/CD)

## CI/CD Pipeline

This repository includes a GitHub Actions workflow that automatically builds and pushes a Docker image to Docker Hub on every push to the `main` branch.

### Setup Instructions

To enable the CI/CD pipeline, you need to add the following secrets to your GitHub repository:

1. Go to your GitHub repository settings
2. Navigate to **Secrets and variables** → **Actions**
3. Add the following repository secrets:
   - `DOCKER_USERNAME`: Your Docker Hub username
   - `DOCKER_PASSWORD`: Your Docker Hub password or access token

### Image Tags

The workflow automatically creates the following tags:
- `latest`: Always points to the most recent build from the main branch
- `main-<git-sha>`: Tagged with the branch name and commit SHA for version tracking

### Using the Published Image

Once the workflow runs successfully, you can pull the image from Docker Hub:

```bash
docker pull <your-dockerhub-username>/lily-adoption:latest
```

## License

See the [LICENSE](LICENSE) file for details.

## Contact

For adoption inquiries, use the WhatsApp link provided on the website.
