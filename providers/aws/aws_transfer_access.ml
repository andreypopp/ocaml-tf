(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type home_directory_mappings = {
  entry : string prop;  (** entry *)
  target : string prop;  (** target *)
}
[@@deriving yojson_of]
(** home_directory_mappings *)

type posix_profile = {
  gid : float prop;  (** gid *)
  secondary_gids : float prop list option; [@option]
      (** secondary_gids *)
  uid : float prop;  (** uid *)
}
[@@deriving yojson_of]
(** posix_profile *)

type aws_transfer_access = {
  external_id : string prop;  (** external_id *)
  home_directory : string prop option; [@option]
      (** home_directory *)
  home_directory_type : string prop option; [@option]
      (** home_directory_type *)
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  role : string prop option; [@option]  (** role *)
  server_id : string prop;  (** server_id *)
  home_directory_mappings : home_directory_mappings list;
  posix_profile : posix_profile list;
}
[@@deriving yojson_of]
(** aws_transfer_access *)

let home_directory_mappings ~entry ~target () :
    home_directory_mappings =
  { entry; target }

let posix_profile ?secondary_gids ~gid ~uid () : posix_profile =
  { gid; secondary_gids; uid }

let aws_transfer_access ?home_directory ?home_directory_type ?id
    ?policy ?role ~external_id ~server_id ~home_directory_mappings
    ~posix_profile () : aws_transfer_access =
  {
    external_id;
    home_directory;
    home_directory_type;
    id;
    policy;
    role;
    server_id;
    home_directory_mappings;
    posix_profile;
  }

type t = {
  external_id : string prop;
  home_directory : string prop;
  home_directory_type : string prop;
  id : string prop;
  policy : string prop;
  role : string prop;
  server_id : string prop;
}

let make ?home_directory ?home_directory_type ?id ?policy ?role
    ~external_id ~server_id ~home_directory_mappings ~posix_profile
    __id =
  let __type = "aws_transfer_access" in
  let __attrs =
    ({
       external_id = Prop.computed __type __id "external_id";
       home_directory = Prop.computed __type __id "home_directory";
       home_directory_type =
         Prop.computed __type __id "home_directory_type";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       role = Prop.computed __type __id "role";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_access
        (aws_transfer_access ?home_directory ?home_directory_type ?id
           ?policy ?role ~external_id ~server_id
           ~home_directory_mappings ~posix_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?home_directory ?home_directory_type ?id
    ?policy ?role ~external_id ~server_id ~home_directory_mappings
    ~posix_profile __id =
  let (r : _ Tf_core.resource) =
    make ?home_directory ?home_directory_type ?id ?policy ?role
      ~external_id ~server_id ~home_directory_mappings ~posix_profile
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
