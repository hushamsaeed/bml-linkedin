# Command: /sync

## Trigger
Run after every completed task. This is the most important command in the system.

## Steps

1. **Update Project Memory**
   - Review what was just accomplished
   - Update AGENTS.md project state section
   - Update any relevant `.agents/reference/` docs if new patterns discovered

2. **Update Journal**
   - Append entry to `journal/YYYY-MM-DD.md`:
   ```markdown
   ## [HH:MM] — {Agent} — {Task}
   
   **Action**: What was done
   **Result**: What happened
   **Decisions**: Any decisions made and why
   **Next Steps**: What should happen next
   ```

3. **Update CRS**
   - Append to `journal/CRS.md`:
   ```markdown
   ### [YYYY-MM-DD HH:MM] — {Change Title}
   
   - **What changed**: Description of modification
   - **Why**: Reason for the change
   - **Agent**: Which agent made the change
   - **Impact**: What's affected by this change
   - **Rollback**: How to undo if needed
   ```

4. **Git Commit & Push**
   - Run `/commit` workflow

5. **System Evolution Check**
   - Ask: "Did we discover a pattern that should become a rule?"
   - If yes: Update relevant reference doc or create a new one
   - Ask: "Did we repeat a workflow that should become a command?"
   - If yes: Create a new command in `/commands/`

## Expected Output
- All memory layers in sync
- Journal updated
- CRS updated
- Git pushed
- System evolved if applicable
