# code-bytes
Sure, here's a basic template you can use for your README file:

---

This project demonstrates the deployment of a chatbot using Flask and JavaScript. The chatbot is initially created in Python using PyTorch and is served using Flask as a backend API. The front-end is implemented using JavaScript.

## Table of Contents

- [Overview](#overview)
- [Setup](#setup)
- [Usage](#usage)
- [Deployment](#deployment)
- [Tutorial](#tutorial)
- [Credits](#credits)

## Overview

This repository showcases two deployment options for a chatbot:
- Deployment within Flask app with jinja2 templates
- Standalone Flask prediction API serving front-end JavaScript files

The chatbot uses PyTorch for machine learning capabilities and NLTK for natural language processing.

## Setup

1. **Clone the Repository:**
   ```bash
   $ git clone https://github.com/SamarpitaBDas/code-bytes.git
   $ cd chatbot-deployment
   ```

2. **Create a Virtual Environment:**
   ```bash
   $ python3 -m venv venv
   $ . venv/bin/activate
   ```

3. **Install Dependencies:**
   ```bash
   $ (venv) pip install -r requirements.txt
   ```

4. **Download NLTK Package:**
   ```bash
   $ (venv) python
   >>> import nltk
   >>> nltk.download('punkt')
   ```

## Usage

1. **Train the Model:**
   ```bash
   $ (venv) python train.py
   ```

2. **Test in Console:**
   ```bash
   $ (venv) python chat.py
   ```
