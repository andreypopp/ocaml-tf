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

let aws_kms_grant ?grant_creation_tokens ?id ?name ?retire_on_delete
    ?retiring_principal ~grantee_principal ~key_id ~operations
    ~constraints __resource_id =
  let __resource_type = "aws_kms_grant" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_grant __resource);
  ()
