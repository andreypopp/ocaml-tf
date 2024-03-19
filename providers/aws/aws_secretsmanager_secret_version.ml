(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_secretsmanager_secret_version = {
  id : string prop option; [@option]  (** id *)
  secret_binary : string prop option; [@option]  (** secret_binary *)
  secret_id : string prop;  (** secret_id *)
  secret_string : string prop option; [@option]  (** secret_string *)
  version_stages : string prop list option; [@option]
      (** version_stages *)
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret_version *)

let aws_secretsmanager_secret_version ?id ?secret_binary
    ?secret_string ?version_stages ~secret_id () :
    aws_secretsmanager_secret_version =
  { id; secret_binary; secret_id; secret_string; version_stages }

type t = {
  arn : string prop;
  id : string prop;
  secret_binary : string prop;
  secret_id : string prop;
  secret_string : string prop;
  version_id : string prop;
  version_stages : string list prop;
}

let register ?tf_module ?id ?secret_binary ?secret_string
    ?version_stages ~secret_id __resource_id =
  let __resource_type = "aws_secretsmanager_secret_version" in
  let __resource =
    aws_secretsmanager_secret_version ?id ?secret_binary
      ?secret_string ?version_stages ~secret_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret_version __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       secret_binary =
         Prop.computed __resource_type __resource_id "secret_binary";
       secret_id =
         Prop.computed __resource_type __resource_id "secret_id";
       secret_string =
         Prop.computed __resource_type __resource_id "secret_string";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
       version_stages =
         Prop.computed __resource_type __resource_id "version_stages";
     }
      : t)
  in
  __resource_attributes
