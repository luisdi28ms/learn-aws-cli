# Identity Access Management

IAM is the answer to the questions:

- Who are you? (Authentication)
- What are allowed to do? (Authorization)

AWS utilizes the following components to manage access:

- Users
- Groups: collection of users with same permissions.
- Roles: Temporary identities assumed by users, systems, or apps.
- Trust Policies: Which entities can assume which roles.
  - Principal: Service or entity that can assume a role.
  - Action: "sts:AssumeRole" (For describing what the Trust Policy enables).
- Policy: Rules around what can users or roles can do.

There is a Instance Profile component that handles the permissions for the EC2 instance to be able to assume the role. This is accomplished by:

- `./create_instance_profile.bash`
- `./add_role_to_instance_profile.bash`

## References

- [Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
- [Policies II](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html#customer-managed-policies)
- [Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html)
