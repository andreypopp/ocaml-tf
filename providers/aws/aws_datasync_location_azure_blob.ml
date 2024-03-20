(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sas_configuration = { token : string prop  (** token *) }
[@@deriving yojson_of]
(** sas_configuration *)

type aws_datasync_location_azure_blob = {
  access_tier : string prop option; [@option]  (** access_tier *)
  agent_arns : string prop list;  (** agent_arns *)
  authentication_type : string prop;  (** authentication_type *)
  blob_type : string prop option; [@option]  (** blob_type *)
  container_url : string prop;  (** container_url *)
  id : string prop option; [@option]  (** id *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  sas_configuration : sas_configuration list;
}
[@@deriving yojson_of]
(** aws_datasync_location_azure_blob *)

let sas_configuration ~token () : sas_configuration = { token }

let aws_datasync_location_azure_blob ?access_tier ?blob_type ?id
    ?subdirectory ?tags ?tags_all ~agent_arns ~authentication_type
    ~container_url ~sas_configuration () :
    aws_datasync_location_azure_blob =
  {
    access_tier;
    agent_arns;
    authentication_type;
    blob_type;
    container_url;
    id;
    subdirectory;
    tags;
    tags_all;
    sas_configuration;
  }

type t = {
  access_tier : string prop;
  agent_arns : string list prop;
  arn : string prop;
  authentication_type : string prop;
  blob_type : string prop;
  container_url : string prop;
  id : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let make ?access_tier ?blob_type ?id ?subdirectory ?tags ?tags_all
    ~agent_arns ~authentication_type ~container_url
    ~sas_configuration __id =
  let __type = "aws_datasync_location_azure_blob" in
  let __attrs =
    ({
       access_tier = Prop.computed __type __id "access_tier";
       agent_arns = Prop.computed __type __id "agent_arns";
       arn = Prop.computed __type __id "arn";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       blob_type = Prop.computed __type __id "blob_type";
       container_url = Prop.computed __type __id "container_url";
       id = Prop.computed __type __id "id";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_azure_blob
        (aws_datasync_location_azure_blob ?access_tier ?blob_type ?id
           ?subdirectory ?tags ?tags_all ~agent_arns
           ~authentication_type ~container_url ~sas_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?access_tier ?blob_type ?id ?subdirectory
    ?tags ?tags_all ~agent_arns ~authentication_type ~container_url
    ~sas_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?access_tier ?blob_type ?id ?subdirectory ?tags ?tags_all
      ~agent_arns ~authentication_type ~container_url
      ~sas_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
