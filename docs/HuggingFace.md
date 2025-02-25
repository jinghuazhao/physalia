# Hugging Face

Web: <https://huggingface.co/>

## Threads of documentation
				
1. New model repository, <https://huggingface.co/new>
2. Hub documentation, <https://huggingface.co/docs/hub/index>
3. Programming access, <https://huggingface.co/docs/huggingface_hub/index>

## git and git-lfs

To create a repository from the CLI using a token from
<https://huggingface.co/settings/tokens> and git-lfs from
<https://git-lfs.github.com>.

```bash
# In place if transformers or datasets are installed
pip install huggingface_hub
# Log in using a token
huggingface-cli login
# Create a model or dataset repo from the CLI if needed
huggingface-cli repo create repo_name --type {model, dataset, space}
# Clone the model, dataset or Space locally
git lfs install
git clone https://huggingface.co/username/repo_name						
# add, commit and push any file, including large files.
# save files via `.save_pretrained()` or move them here
git add .
git commit -m "commit from $USER"
git push
```					

In most cases with the compatible libraries, the repo will be accessible from code
through its identifier: username/repo_name, e.g., for a transformers model with:

```
tokenizer = AutoTokenizer.from_pretrained("username/repo_name")
model = AutoModel.from_pretrained("username/repo_name")
```
