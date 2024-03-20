(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datasync_location_object_storage = {
  access_key : string prop option; [@option]  (** access_key *)
  agent_arns : string prop list;  (** agent_arns *)
  bucket_name : string prop;  (** bucket_name *)
  id : string prop option; [@option]  (** id *)
  secret_key : string prop option; [@option]  (** secret_key *)
  server_certificate : string prop option; [@option]
      (** server_certificate *)
  server_hostname : string prop;  (** server_hostname *)
  server_port : float prop option; [@option]  (** server_port *)
  server_protocol : string prop option; [@option]
      (** server_protocol *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_datasync_location_object_storage *)

let aws_datasync_location_object_storage ?access_key ?id ?secret_key
    ?server_certificate ?server_port ?server_protocol ?subdirectory
    ?tags ?tags_all ~agent_arns ~bucket_name ~server_hostname () :
    aws_datasync_location_object_storage =
  {
    access_key;
    agent_arns;
    bucket_name;
    id;
    secret_key;
    server_certificate;
    server_hostname;
    server_port;
    server_protocol;
    subdirectory;
    tags;
    tags_all;
  }

type t = {
  access_key : string prop;
  agent_arns : string list prop;
  arn : string prop;
  bucket_name : string prop;
  id : string prop;
  secret_key : string prop;
  server_certificate : string prop;
  server_hostname : string prop;
  server_port : float prop;
  server_protocol : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let make ?access_key ?id ?secret_key ?server_certificate ?server_port
    ?server_protocol ?subdirectory ?tags ?tags_all ~agent_arns
    ~bucket_name ~server_hostname __id =
  let __type = "aws_datasync_location_object_storage" in
  let __attrs =
    ({
       access_key = Prop.computed __type __id "access_key";
       agent_arns = Prop.computed __type __id "agent_arns";
       arn = Prop.computed __type __id "arn";
       bucket_name = Prop.computed __type __id "bucket_name";
       id = Prop.computed __type __id "id";
       secret_key = Prop.computed __type __id "secret_key";
       server_certificate =
         Prop.computed __type __id "server_certificate";
       server_hostname = Prop.computed __type __id "server_hostname";
       server_port = Prop.computed __type __id "server_port";
       server_protocol = Prop.computed __type __id "server_protocol";
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
      yojson_of_aws_datasync_location_object_storage
        (aws_datasync_location_object_storage ?access_key ?id
           ?secret_key ?server_certificate ?server_port
           ?server_protocol ?subdirectory ?tags ?tags_all ~agent_arns
           ~bucket_name ~server_hostname ());
    attrs = __attrs;
  }

let register ?tf_module ?access_key ?id ?secret_key
    ?server_certificate ?server_port ?server_protocol ?subdirectory
    ?tags ?tags_all ~agent_arns ~bucket_name ~server_hostname __id =
  let (r : _ Tf_core.resource) =
    make ?access_key ?id ?secret_key ?server_certificate ?server_port
      ?server_protocol ?subdirectory ?tags ?tags_all ~agent_arns
      ~bucket_name ~server_hostname __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
