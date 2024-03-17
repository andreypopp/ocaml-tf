(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_aggregate_authorization = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  region : string prop;  (** region *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_config_aggregate_authorization *)

type t = {
  account_id : string prop;
  arn : string prop;
  id : string prop;
  region : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_config_aggregate_authorization ?id ?tags ?tags_all
    ~account_id ~region __resource_id =
  let __resource_type = "aws_config_aggregate_authorization" in
  let __resource =
    ({ account_id; id; region; tags; tags_all }
      : aws_config_aggregate_authorization)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_aggregate_authorization __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       region = Prop.computed __resource_type __resource_id "region";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
