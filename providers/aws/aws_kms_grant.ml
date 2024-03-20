(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type constraints = {
  encryption_context_equals : (string * string prop) list option;
      [@option]
      (** encryption_context_equals *)
  encryption_context_subset : (string * string prop) list option;
      [@option]
      (** encryption_context_subset *)
}
[@@deriving yojson_of]
(** constraints *)

type aws_kms_grant = {
  grant_creation_tokens : string prop list option; [@option]
      (** grant_creation_tokens *)
  grantee_principal : string prop;  (** grantee_principal *)
  id : string prop option; [@option]  (** id *)
  key_id : string prop;  (** key_id *)
  name : string prop option; [@option]  (** name *)
  operations : string prop list;  (** operations *)
  retire_on_delete : bool prop option; [@option]
      (** retire_on_delete *)
  retiring_principal : string prop option; [@option]
      (** retiring_principal *)
  constraints : constraints list;
}
[@@deriving yojson_of]
(** aws_kms_grant *)

let constraints ?encryption_context_equals ?encryption_context_subset
    () : constraints =
  { encryption_context_equals; encryption_context_subset }

let aws_kms_grant ?grant_creation_tokens ?id ?name ?retire_on_delete
    ?retiring_principal ~grantee_principal ~key_id ~operations
    ~constraints () : aws_kms_grant =
  {
    grant_creation_tokens;
    grantee_principal;
    id;
    key_id;
    name;
    operations;
    retire_on_delete;
    retiring_principal;
    constraints;
  }

type t = {
  grant_creation_tokens : string list prop;
  grant_id : string prop;
  grant_token : string prop;
  grantee_principal : string prop;
  id : string prop;
  key_id : string prop;
  name : string prop;
  operations : string list prop;
  retire_on_delete : bool prop;
  retiring_principal : string prop;
}

let make ?grant_creation_tokens ?id ?name ?retire_on_delete
    ?retiring_principal ~grantee_principal ~key_id ~operations
    ~constraints __id =
  let __type = "aws_kms_grant" in
  let __attrs =
    ({
       grant_creation_tokens =
         Prop.computed __type __id "grant_creation_tokens";
       grant_id = Prop.computed __type __id "grant_id";
       grant_token = Prop.computed __type __id "grant_token";
       grantee_principal =
         Prop.computed __type __id "grantee_principal";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       name = Prop.computed __type __id "name";
       operations = Prop.computed __type __id "operations";
       retire_on_delete =
         Prop.computed __type __id "retire_on_delete";
       retiring_principal =
         Prop.computed __type __id "retiring_principal";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_grant
        (aws_kms_grant ?grant_creation_tokens ?id ?name
           ?retire_on_delete ?retiring_principal ~grantee_principal
           ~key_id ~operations ~constraints ());
    attrs = __attrs;
  }

let register ?tf_module ?grant_creation_tokens ?id ?name
    ?retire_on_delete ?retiring_principal ~grantee_principal ~key_id
    ~operations ~constraints __id =
  let (r : _ Tf_core.resource) =
    make ?grant_creation_tokens ?id ?name ?retire_on_delete
      ?retiring_principal ~grantee_principal ~key_id ~operations
      ~constraints __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
