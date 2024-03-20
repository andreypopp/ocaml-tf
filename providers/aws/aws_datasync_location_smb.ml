(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** mount_options *)

type aws_datasync_location_smb = {
  agent_arns : string prop list;  (** agent_arns *)
  domain : string prop option; [@option]  (** domain *)
  id : string prop option; [@option]  (** id *)
  password : string prop;  (** password *)
  server_hostname : string prop;  (** server_hostname *)
  subdirectory : string prop;  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user : string prop;  (** user *)
  mount_options : mount_options list;
}
[@@deriving yojson_of]
(** aws_datasync_location_smb *)

let mount_options ?version () : mount_options = { version }

let aws_datasync_location_smb ?domain ?id ?tags ?tags_all ~agent_arns
    ~password ~server_hostname ~subdirectory ~user ~mount_options ()
    : aws_datasync_location_smb =
  {
    agent_arns;
    domain;
    id;
    password;
    server_hostname;
    subdirectory;
    tags;
    tags_all;
    user;
    mount_options;
  }

type t = {
  agent_arns : string list prop;
  arn : string prop;
  domain : string prop;
  id : string prop;
  password : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
  user : string prop;
}

let make ?domain ?id ?tags ?tags_all ~agent_arns ~password
    ~server_hostname ~subdirectory ~user ~mount_options __id =
  let __type = "aws_datasync_location_smb" in
  let __attrs =
    ({
       agent_arns = Prop.computed __type __id "agent_arns";
       arn = Prop.computed __type __id "arn";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       password = Prop.computed __type __id "password";
       server_hostname = Prop.computed __type __id "server_hostname";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_smb
        (aws_datasync_location_smb ?domain ?id ?tags ?tags_all
           ~agent_arns ~password ~server_hostname ~subdirectory ~user
           ~mount_options ());
    attrs = __attrs;
  }

let register ?tf_module ?domain ?id ?tags ?tags_all ~agent_arns
    ~password ~server_hostname ~subdirectory ~user ~mount_options
    __id =
  let (r : _ Tf_core.resource) =
    make ?domain ?id ?tags ?tags_all ~agent_arns ~password
      ~server_hostname ~subdirectory ~user ~mount_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
