# WordBridge

A real-time word chain game built with Reflex.

## 🚀 Deployment to Reflex Cloud

To deploy this application to Reflex Cloud, follow these steps:

### Prerequisites
- Ensure you have **Reflex version 0.6.6 or higher** installed.
- Ensure your `requirements.txt` is up to date.

### Steps
1. **Login to Reflex Cloud**
   ```bash
   reflex login
   ```
   This will open your browser to authenticate your account.

2. **Access Your Project Dashboard**
   Navigate to the [Reflex Cloud dashboard](https://reflex.dev) and select your project.

3. **Get the Deployment Command**
   In your project's dashboard, you will find a specific deployment command (e.g., `reflex deploy --project <your-project-id>`).

4. **Deploy**
   Run the deployment command in your terminal:
   ```bash
   reflex deploy --project <your-project-id>
   ```

5. **Verify**
   Follow the interactive prompts in the terminal to complete the deployment.

---

## 🌐 Connecting a Custom Domain (via reflex.dev)

Reflex Cloud makes it easy to connect your own domain (like one from GoDaddy) directly through the dashboard.

### 1. Add Your Domain on Reflex.dev
1. Log in to your [Reflex Cloud Dashboard](https://reflex.dev).
2. Select the application you want to link.
3. Click on the **Custom Domain** tab in the app settings.
4. Enter your custom domain name (e.g., `www.yourdomain.com`) and click **Add Domain**.
5. **Note:** Reflex will then generate the specific DNS records you need to add to your registrar.

### 2. Configure DNS Settings (GoDaddy)
1. Log in to your [GoDaddy Control Panel](https://dcc.godaddy.com/manage/portfolio).
2. Find your domain and click on **DNS** or **Manage DNS**.
3. Add the **A Records** or **CNAME Records** exactly as shown in your Reflex.dev dashboard.
4. If there are existing `A` records for the same hostname, you should remove them to avoid conflicts.

### 3. Verify and Finish
1. Go back to your **Reflex.dev dashboard**.
2. Click **Verify** (or wait for the status to update to "Verified").
3. Once verified, run a final `reflex deploy` from your terminal to ensure the SSL certificate and routing are fully updated.
4. *Propagation usually takes a few minutes, but can take up to 48 hours.*

---

## Local Development

1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Run the app:
   ```bash
   reflex run
   ```
