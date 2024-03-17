(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_grant__constraints = {
  encryption_context_equals : (string * string prop) list option;
      [@option]
      (** encryption_context_equals *)
  encryption_context_subset : (string * string prop) list option;
      [@option]
      (** encryption_context_subset *)
}
[@@deriving yojson_of]
(** aws_kms_grant__constraints *)

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
  constraints : aws_kms_grant__constraints list;
}
[@@deriving yojson_of]
(** aws_kms_grant *)

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

let aws_kms_grant ?grant_creation_tokens ?id ?name ?retire_on_delete
    ?retiring_principal ~grantee_principal ~key_id ~operations
    ~constraints __resource_id =
  let __resource_type = "aws_kms_grant" in
  let __resource =
    ({
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
      : aws_kms_grant)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_grant __resource);
  let __resource_attributes =
    ({
       grant_creation_tokens =
         Prop.computed __resource_type __resource_id
           "grant_creation_tokens";
       grant_id =
         Prop.computed __resource_type __resource_id "grant_id";
       grant_token =
         Prop.computed __resource_type __resource_id "grant_token";
       grantee_principal =
         Prop.computed __resource_type __resource_id
           "grantee_principal";
       id = Prop.computed __resource_type __resource_id "id";
       key_id = Prop.computed __resource_type __resource_id "key_id";
       name = Prop.computed __resource_type __resource_id "name";
       operations =
         Prop.computed __resource_type __resource_id "operations";
       retire_on_delete =
         Prop.computed __resource_type __resource_id
           "retire_on_delete";
       retiring_principal =
         Prop.computed __resource_type __resource_id
           "retiring_principal";
     }
      : t)
  in
  __resource_attributes
