(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_secretsmanager_secret__replica = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  last_accessed_date : string prop;  (** last_accessed_date *)
  region : string prop;  (** region *)
  status : string prop;  (** status *)
  status_message : string prop;  (** status_message *)
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret__replica *)

type aws_secretsmanager_secret = {
  description : string prop option; [@option]  (** description *)
  force_overwrite_replica_secret : bool prop option; [@option]
      (** force_overwrite_replica_secret *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  policy : string prop option; [@option]  (** policy *)
  recovery_window_in_days : float prop option; [@option]
      (** recovery_window_in_days *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  replica : aws_secretsmanager_secret__replica list;
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret *)

type t = {
  arn : string prop;
  description : string prop;
  force_overwrite_replica_secret : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  recovery_window_in_days : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_secretsmanager_secret ?description
    ?force_overwrite_replica_secret ?id ?kms_key_id ?name
    ?name_prefix ?policy ?recovery_window_in_days ?tags ?tags_all
    ~replica __resource_id =
  let __resource_type = "aws_secretsmanager_secret" in
  let __resource =
    ({
       description;
       force_overwrite_replica_secret;
       id;
       kms_key_id;
       name;
       name_prefix;
       policy;
       recovery_window_in_days;
       tags;
       tags_all;
       replica;
     }
      : aws_secretsmanager_secret)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       force_overwrite_replica_secret =
         Prop.computed __resource_type __resource_id
           "force_overwrite_replica_secret";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       policy = Prop.computed __resource_type __resource_id "policy";
       recovery_window_in_days =
         Prop.computed __resource_type __resource_id
           "recovery_window_in_days";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
