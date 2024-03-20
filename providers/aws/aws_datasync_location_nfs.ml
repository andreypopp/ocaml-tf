(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** mount_options *)

type on_prem_config = {
  agent_arns : string prop list;  (** agent_arns *)
}
[@@deriving yojson_of]
(** on_prem_config *)

type aws_datasync_location_nfs = {
  id : string prop option; [@option]  (** id *)
  server_hostname : string prop;  (** server_hostname *)
  subdirectory : string prop;  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  mount_options : mount_options list;
  on_prem_config : on_prem_config list;
}
[@@deriving yojson_of]
(** aws_datasync_location_nfs *)

let mount_options ?version () : mount_options = { version }
let on_prem_config ~agent_arns () : on_prem_config = { agent_arns }

let aws_datasync_location_nfs ?id ?tags ?tags_all ~server_hostname
    ~subdirectory ~mount_options ~on_prem_config () :
    aws_datasync_location_nfs =
  {
    id;
    server_hostname;
    subdirectory;
    tags;
    tags_all;
    mount_options;
    on_prem_config;
  }

type t = {
  arn : string prop;
  id : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let make ?id ?tags ?tags_all ~server_hostname ~subdirectory
    ~mount_options ~on_prem_config __id =
  let __type = "aws_datasync_location_nfs" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       server_hostname = Prop.computed __type __id "server_hostname";
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
      yojson_of_aws_datasync_location_nfs
        (aws_datasync_location_nfs ?id ?tags ?tags_all
           ~server_hostname ~subdirectory ~mount_options
           ~on_prem_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~server_hostname
    ~subdirectory ~mount_options ~on_prem_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~server_hostname ~subdirectory
      ~mount_options ~on_prem_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
