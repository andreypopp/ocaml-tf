(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_signer_signing_profile_permission = {
  action : string;  (** action *)
  id : string option; [@option]  (** id *)
  principal : string;  (** principal *)
  profile_name : string;  (** profile_name *)
  profile_version : string option; [@option]  (** profile_version *)
  statement_id : string option; [@option]  (** statement_id *)
  statement_id_prefix : string option; [@option]
      (** statement_id_prefix *)
}
[@@deriving yojson_of]
(** aws_signer_signing_profile_permission *)

let aws_signer_signing_profile_permission ?id ?profile_version
    ?statement_id ?statement_id_prefix ~action ~principal
    ~profile_name __resource_id =
  let __resource_type = "aws_signer_signing_profile_permission" in
  let __resource =
    {
      action;
      id;
      principal;
      profile_name;
      profile_version;
      statement_id;
      statement_id_prefix;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_signer_signing_profile_permission __resource);
  ()
