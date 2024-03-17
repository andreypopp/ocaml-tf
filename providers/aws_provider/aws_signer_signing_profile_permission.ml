(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_signer_signing_profile_permission = {
  action : string prop;  (** action *)
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  profile_name : string prop;  (** profile_name *)
  profile_version : string prop option; [@option]
      (** profile_version *)
  statement_id : string prop option; [@option]  (** statement_id *)
  statement_id_prefix : string prop option; [@option]
      (** statement_id_prefix *)
}
[@@deriving yojson_of]
(** aws_signer_signing_profile_permission *)

type t = {
  action : string prop;
  id : string prop;
  principal : string prop;
  profile_name : string prop;
  profile_version : string prop;
  statement_id : string prop;
  statement_id_prefix : string prop;
}

let aws_signer_signing_profile_permission ?id ?profile_version
    ?statement_id ?statement_id_prefix ~action ~principal
    ~profile_name __resource_id =
  let __resource_type = "aws_signer_signing_profile_permission" in
  let __resource =
    ({
       action;
       id;
       principal;
       profile_name;
       profile_version;
       statement_id;
       statement_id_prefix;
     }
      : aws_signer_signing_profile_permission)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_signer_signing_profile_permission __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       id = Prop.computed __resource_type __resource_id "id";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       profile_name =
         Prop.computed __resource_type __resource_id "profile_name";
       profile_version =
         Prop.computed __resource_type __resource_id
           "profile_version";
       statement_id =
         Prop.computed __resource_type __resource_id "statement_id";
       statement_id_prefix =
         Prop.computed __resource_type __resource_id
           "statement_id_prefix";
     }
      : t)
  in
  __resource_attributes
