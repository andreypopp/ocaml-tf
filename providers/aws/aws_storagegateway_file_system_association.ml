(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cache_attributes = {
  cache_stale_timeout_in_seconds : float prop option; [@option]
      (** cache_stale_timeout_in_seconds *)
}
[@@deriving yojson_of]
(** cache_attributes *)

type aws_storagegateway_file_system_association = {
  audit_destination_arn : string prop option; [@option]
      (** audit_destination_arn *)
  gateway_arn : string prop;  (** gateway_arn *)
  id : string prop option; [@option]  (** id *)
  location_arn : string prop;  (** location_arn *)
  password : string prop;  (** password *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  username : string prop;  (** username *)
  cache_attributes : cache_attributes list;
}
[@@deriving yojson_of]
(** aws_storagegateway_file_system_association *)

let cache_attributes ?cache_stale_timeout_in_seconds () :
    cache_attributes =
  { cache_stale_timeout_in_seconds }

let aws_storagegateway_file_system_association ?audit_destination_arn
    ?id ?tags ?tags_all ~gateway_arn ~location_arn ~password
    ~username ~cache_attributes () :
    aws_storagegateway_file_system_association =
  {
    audit_destination_arn;
    gateway_arn;
    id;
    location_arn;
    password;
    tags;
    tags_all;
    username;
    cache_attributes;
  }

type t = {
  arn : string prop;
  audit_destination_arn : string prop;
  gateway_arn : string prop;
  id : string prop;
  location_arn : string prop;
  password : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  username : string prop;
}

let register ?tf_module ?audit_destination_arn ?id ?tags ?tags_all
    ~gateway_arn ~location_arn ~password ~username ~cache_attributes
    __resource_id =
  let __resource_type =
    "aws_storagegateway_file_system_association"
  in
  let __resource =
    aws_storagegateway_file_system_association ?audit_destination_arn
      ?id ?tags ?tags_all ~gateway_arn ~location_arn ~password
      ~username ~cache_attributes ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_file_system_association __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       audit_destination_arn =
         Prop.computed __resource_type __resource_id
           "audit_destination_arn";
       gateway_arn =
         Prop.computed __resource_type __resource_id "gateway_arn";
       id = Prop.computed __resource_type __resource_id "id";
       location_arn =
         Prop.computed __resource_type __resource_id "location_arn";
       password =
         Prop.computed __resource_type __resource_id "password";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
