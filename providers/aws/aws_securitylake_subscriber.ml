(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source__aws_log_source_resource = {
  source_name : string prop option; [@option]  (** source_name *)
  source_version : string prop option; [@option]
      (** source_version *)
}
[@@deriving yojson_of]
(** source__aws_log_source_resource *)

type source__custom_log_source_resource__attributes = {
  crawler_arn : string prop;  (** crawler_arn *)
  database_arn : string prop;  (** database_arn *)
  table_arn : string prop;  (** table_arn *)
}
[@@deriving yojson_of]

type source__custom_log_source_resource__provider = {
  location : string prop;  (** location *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]

type source__custom_log_source_resource = {
  source_name : string prop option; [@option]  (** source_name *)
  source_version : string prop option; [@option]
      (** source_version *)
}
[@@deriving yojson_of]
(** source__custom_log_source_resource *)

type source = {
  aws_log_source_resource : source__aws_log_source_resource list;
  custom_log_source_resource :
    source__custom_log_source_resource list;
}
[@@deriving yojson_of]
(** source *)

type subscriber_identity = {
  external_id : string prop;  (** external_id *)
  principal : string prop;  (** principal *)
}
[@@deriving yojson_of]
(** subscriber_identity *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_securitylake_subscriber = {
  access_type : string prop option; [@option]  (** access_type *)
  subscriber_description : string prop option; [@option]
      (** subscriber_description *)
  subscriber_name : string prop option; [@option]
      (** subscriber_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  source : source list;
  subscriber_identity : subscriber_identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_securitylake_subscriber *)

let source__aws_log_source_resource ?source_name ?source_version () :
    source__aws_log_source_resource =
  { source_name; source_version }

let source__custom_log_source_resource ?source_name ?source_version
    () : source__custom_log_source_resource =
  { source_name; source_version }

let source ~aws_log_source_resource ~custom_log_source_resource () :
    source =
  { aws_log_source_resource; custom_log_source_resource }

let subscriber_identity ~external_id ~principal () :
    subscriber_identity =
  { external_id; principal }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_securitylake_subscriber ?access_type ?subscriber_description
    ?subscriber_name ?tags ?timeouts ~source ~subscriber_identity ()
    : aws_securitylake_subscriber =
  {
    access_type;
    subscriber_description;
    subscriber_name;
    tags;
    source;
    subscriber_identity;
    timeouts;
  }

type t = {
  access_type : string prop;
  arn : string prop;
  id : string prop;
  resource_share_arn : string prop;
  resource_share_name : string prop;
  role_arn : string prop;
  s3_bucket_arn : string prop;
  subscriber_description : string prop;
  subscriber_endpoint : string prop;
  subscriber_name : string prop;
  subscriber_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?access_type ?subscriber_description ?subscriber_name ?tags
    ?timeouts ~source ~subscriber_identity __id =
  let __type = "aws_securitylake_subscriber" in
  let __attrs =
    ({
       access_type = Prop.computed __type __id "access_type";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       resource_share_arn =
         Prop.computed __type __id "resource_share_arn";
       resource_share_name =
         Prop.computed __type __id "resource_share_name";
       role_arn = Prop.computed __type __id "role_arn";
       s3_bucket_arn = Prop.computed __type __id "s3_bucket_arn";
       subscriber_description =
         Prop.computed __type __id "subscriber_description";
       subscriber_endpoint =
         Prop.computed __type __id "subscriber_endpoint";
       subscriber_name = Prop.computed __type __id "subscriber_name";
       subscriber_status =
         Prop.computed __type __id "subscriber_status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securitylake_subscriber
        (aws_securitylake_subscriber ?access_type
           ?subscriber_description ?subscriber_name ?tags ?timeouts
           ~source ~subscriber_identity ());
    attrs = __attrs;
  }

let register ?tf_module ?access_type ?subscriber_description
    ?subscriber_name ?tags ?timeouts ~source ~subscriber_identity
    __id =
  let (r : _ Tf_core.resource) =
    make ?access_type ?subscriber_description ?subscriber_name ?tags
      ?timeouts ~source ~subscriber_identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
