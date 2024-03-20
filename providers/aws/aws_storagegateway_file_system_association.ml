(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?audit_destination_arn ?id ?tags ?tags_all ~gateway_arn
    ~location_arn ~password ~username ~cache_attributes __id =
  let __type = "aws_storagegateway_file_system_association" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       audit_destination_arn =
         Prop.computed __type __id "audit_destination_arn";
       gateway_arn = Prop.computed __type __id "gateway_arn";
       id = Prop.computed __type __id "id";
       location_arn = Prop.computed __type __id "location_arn";
       password = Prop.computed __type __id "password";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_file_system_association
        (aws_storagegateway_file_system_association
           ?audit_destination_arn ?id ?tags ?tags_all ~gateway_arn
           ~location_arn ~password ~username ~cache_attributes ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_destination_arn ?id ?tags ?tags_all
    ~gateway_arn ~location_arn ~password ~username ~cache_attributes
    __id =
  let (r : _ Tf_core.resource) =
    make ?audit_destination_arn ?id ?tags ?tags_all ~gateway_arn
      ~location_arn ~password ~username ~cache_attributes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
