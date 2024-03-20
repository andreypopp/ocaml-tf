(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__crawler_configuration = {
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** configuration__crawler_configuration *)

type configuration__provider_identity = {
  external_id : string prop;  (** external_id *)
  principal : string prop;  (** principal *)
}
[@@deriving yojson_of]
(** configuration__provider_identity *)

type configuration = {
  crawler_configuration : configuration__crawler_configuration list;
  provider_identity : configuration__provider_identity list;
}
[@@deriving yojson_of]
(** configuration *)

type attributes = {
  crawler_arn : string prop;  (** crawler_arn *)
  database_arn : string prop;  (** database_arn *)
  table_arn : string prop;  (** table_arn *)
}
[@@deriving yojson_of]

type provider_details = {
  location : string prop;  (** location *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]

type aws_securitylake_custom_log_source = {
  event_classes : string prop list option; [@option]
      (** event_classes *)
  source_name : string prop;  (** source_name *)
  source_version : string prop option; [@option]
      (** source_version *)
  configuration : configuration list;
}
[@@deriving yojson_of]
(** aws_securitylake_custom_log_source *)

let configuration__crawler_configuration ~role_arn () :
    configuration__crawler_configuration =
  { role_arn }

let configuration__provider_identity ~external_id ~principal () :
    configuration__provider_identity =
  { external_id; principal }

let configuration ~crawler_configuration ~provider_identity () :
    configuration =
  { crawler_configuration; provider_identity }

let aws_securitylake_custom_log_source ?event_classes ?source_version
    ~source_name ~configuration () :
    aws_securitylake_custom_log_source =
  { event_classes; source_name; source_version; configuration }

type t = {
  attributes : attributes list prop;
  event_classes : string list prop;
  id : string prop;
  provider_details : provider_details list prop;
  source_name : string prop;
  source_version : string prop;
}

let make ?event_classes ?source_version ~source_name ~configuration
    __id =
  let __type = "aws_securitylake_custom_log_source" in
  let __attrs =
    ({
       attributes = Prop.computed __type __id "attributes";
       event_classes = Prop.computed __type __id "event_classes";
       id = Prop.computed __type __id "id";
       provider_details =
         Prop.computed __type __id "provider_details";
       source_name = Prop.computed __type __id "source_name";
       source_version = Prop.computed __type __id "source_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securitylake_custom_log_source
        (aws_securitylake_custom_log_source ?event_classes
           ?source_version ~source_name ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?event_classes ?source_version ~source_name
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?event_classes ?source_version ~source_name ~configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
