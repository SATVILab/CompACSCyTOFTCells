# Compendium of ACS CyTOF T Cells

## Instructions for running

### Initial configuration

In all cases, make sure that you have the environment variable `GH_TOKEN` set up to a GitHub token with `repo`, `user` and `workflow` scopes
from a GitHub account that has access to the following repositories:

- SATVILab/DataTidyACSClinical
- SATVILab/DataTidyACSCyTOFPreprocess
- SATVILab/DataTidyACSCyTOFFAUST
- SATVILab/PipelineDataACSCytokines
- SATVILab/DataTidyACSCyTOFCytokinesTCells
- SATVILab/PipelineAnalysisACS
- SATVILab/AnalysisACSCyTOFTCells
- SATVILab/ReportACSCyTOFTCells

#### Seting up `GH_TOKEN` environment variable

First, you need to create the token (Getting secret) and then you need to make it available in your environment (GitHub Codespaces, GitPod or HPC).

**Getting secret**

- Go to `https://github.com/settings/tokens`
  - Click `Generate new token`
  - Click `Generate new token (classic)`
  - Name the token something meaningful
  - Select the following scopes:
    - `repo`
    - `user`
    - `workflow`
  - Click `Generate token`

**GitHub Codespaces**: Set up `GH_TOKEN` in the Codespaces settings

- Go to `https://github.com/settings/codespaces`
- On the right of `Codespaces Secrets`, click `New secret`
- Name the secret `GH_TOKEN`
- Paste the token into the `Value` field
  - Get this

### GitHub Codespaces

- *Open Codespace*:
  - Go to `https://github.com/SATVILab/CompACSCyTOFTCells`
  - Click green `Code` button
  - Click green `Create codespace on main` button
  - Wait for set-up
- Switch to VS Code instance:
  - Open a VS Code workspace:
    - Press `Ctrl + Shift + P`
    - Choose `File: Open Workspace from File...`
    - Open workspace with repos of interest:
      - `EntireProject.code-workspace`: Contains all repos
      - `DataTidy.code-workspace`: Contains data-processing repos
      - `Analysis.code-workspace`: Contains analysis repos

### HPC

- Open *terminal*: Open an interactive terminal on a compute node
- *Ensure that `apptainer` is loaded*
  - Run `apptainer --version` to check
    - If it's not, then you'll need to load it somehow (e.g. `module load apptainer`). Ask your system administrator (or hopefully-more-knowledgeable colleague) if you're not sure how to do this.
- *Clone this repository*:
  - Navigate to directory where you want to clone this repo and all other project repos.
    - Note that there are many project repos, so it would be good to do this in its own directory.
      - We create `ProjectACSCyTOFTCells` folder for this purpose.
    - Inside that folder, run `git clone https://github.com/SATVILab/CompACSCyTOFTCells.git`
- *Open terminal inside repo*:
  - Run `cd <path/to/CompACSCyTOFTCells>`
- *Download the container image*:
  - Using a terminal: Run `.src/hpc/download-apptainer.sh`.
  - Using GUI: Go to `https://github.com/SATVILab/CompACSCyTOFTCells/releases/tag/r423` and download `r423.sif` to `sif` folder (run `mkdir -p sif` to create folder first).
- *Open VS Code using a remote tunnel into container*: Run `apptainer exec sif/r423.sif code tunnel --accept-server-license-terms`
    - Follow instructions, up until you then have a browser tab open to a VS Code instance
- Switch to VS Code instance:
  - Open a VS Code workspace:
    - Press `Ctrl + Shift + P`
    - Choose `File: Open Workspace from File...`
    - Open workspace with repos of interest:
      - `EntireProject.code-workspace`: Contains all repos
      - `DataTidy.code-workspace`: Contains data-processing repos
      - `Analysis.code-workspace`: Contains analysis repos

### Local (Linux)

This is if you have Linux set up locally (perhaps using Windows Subsystem for Linux).

In this case, the instructions are basically the same as for the HPC.

- *Open a terminal*
- *Clone this repository*:
  - Navigate to directory where you want to clone this repo and all other project repos.
    - Note that there are many project repos, so it would be good to do this in its own directory.
      - We create `ProjectACSCyTOFTCells` folder for this purpose.
    - Inside that folder, run `git clone https://github.com/SATVILab/CompACSCyTOFTCells.git`
- *Ensure that `apptainer` is installed*
  - Run `apptainer --version` to check
    - If it's not, then you can run `./src/hpc/install-apptainer.sh` to install apptainer.
- *Open terminal inside repo*:
  - Run `cd <path/to/CompACSCyTOFTCells>`
- *Download the container image*:
  - Using a terminal: Run `.src/hpc/download-apptainer.sh`.
  - Using GUI (if terminal doesn't work): Go to `https://github.com/SATVILab/CompACSCyTOFTCells/releases/tag/r423` and download `r423.sif` to `sif` folder (run `mkdir -p sif` to create folder first).
- *Open VS Code using a remote tunnel into container*: Run `apptainer exec sif/r423.sif code tunnel --accept-server-license-terms`
    - Follow instructions, up until you then have a browser tab open to a VS Code instance
- Switch to VS Code instance:
  - Open a VS Code workspace:
    - Press `Ctrl + Shift + P`
    - Choose `File: Open Workspace from File...`
    - Open workspace with repos of interest:
      - `EntireProject.code-workspace`: Contains all repos
      - `DataTidy.code-workspace`: Contains data-processing repos
      - `Analysis.code-workspace`: Contains analysis repos

### Local (other)

In this case, this repository is not particularly useful to you so you might as well just clone individual repos and open them inside VS Code/RStudio.
- Well, this is not entirely true - you could clone this repo and then use the workspace files it provides. But that's not amazingly useful.

So, for this approach:

- Create a project folder to contain all the repos.
- Clone all the repos to that project folder. You can use this script:

```
git clone https://github.com/SATVILab/DataTidyACSClinical.git
git clone https://github.com/SATVILab/DataTidyACSCyTOFPreprocess.git
git clone https://github.com/SATVILab/DataTidyACSCyTOFFAUST.git
git clone https://github.com/SATVILab/PipelineDataACSCytokines.git
git clone https://github.com/SATVILab/DataTidyACSCyTOFCytokinesTCells.git
git clone https://github.com/SATVILab/PipelineAnalysisACS.git
git clone https://github.com/SATVILab/AnalysisACSCyTOFTCells.git
git clone https://github.com/SATVILab/ReportACSCyTOFTCells.git
```

## 📄 Citation

Please cite both the **Scientific Paper** (for the biological findings) and the **Software** (if you used this specific code).

### 1. Cite the Scientific Paper

If you use the methodology or biological findings from this work, please cite the accompanying publication:

> **Rozot V, Rodo MJ, Young C, Musvosvi M, et al.** "[Insert Full Paper Title Here]." *[Journal Name]* (202x). DOI: [Insert DOI]

### 2. Cite this Software

If you use this specific software implementation in your analysis, please cite:

> **Rodo MJ & Scriba TJ.** (2026). *CompACSCyTOFTCells* [Computer software]. Version 1.0.0. SATVI, University of Cape Town.

### BibTeX

```bibtex
@article{rozot_rodo_2026,
  title = {[Insert Full Paper Title Here]},
  author = {Rozot, Virginie and Rodo, Miguel J and Young, Carly and Musvosvi, Munyaradzi and others},
  journal = {[Journal Name]},
  year = {2026},
  doi = {[Insert DOI]}
}

@software{rodo_scriba_2026,
  author = {Rodo, Miguel J and Scriba, Thomas J},
  title = {CompACSCyTOFTCells},
  year = {2026},
  publisher = {SATVI, University of Cape Town},
  version = {1.0.0},
  url = {https://github.com/SATVILab/CompACSCyTOFTCells}
}
```
