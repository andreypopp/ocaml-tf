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

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_transfer_user = {
  home_directory : string prop option; [@option]
      (** home_directory *)
  home_directory_type : string prop option; [@option]
      (** home_directory_type *)
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  role : string prop;  (** role *)
  server_id : string prop;  (** server_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_name : string prop;  (** user_name *)
  home_directory_mappings : home_directory_mappings list;
  posix_profile : posix_profile list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_transfer_user *)

let home_directory_mappings ~entry ~target () :
    home_directory_mappings =
  { entry; target }

let posix_profile ?secondary_gids ~gid ~uid () : posix_profile =
  { gid; secondary_gids; uid }

let timeouts ?delete () : timeouts = { delete }

let aws_transfer_user ?home_directory ?home_directory_type ?id
    ?policy ?tags ?tags_all ?timeouts ~role ~server_id ~user_name
    ~home_directory_mappings ~posix_profile () : aws_transfer_user =
  {
    home_directory;
    home_directory_type;
    id;
    policy;
    role;
    server_id;
    tags;
    tags_all;
    user_name;
    home_directory_mappings;
    posix_profile;
    timeouts;
  }

type t = {
  arn : string prop;
  home_directory : string prop;
  home_directory_type : string prop;
  id : string prop;
  policy : string prop;
  role : string prop;
  server_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
}

let make ?home_directory ?home_directory_type ?id ?policy ?tags
    ?tags_all ?timeouts ~role ~server_id ~user_name
    ~home_directory_mappings ~posix_profile __id =
  let __type = "aws_transfer_user" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       home_directory = Prop.computed __type __id "home_directory";
       home_directory_type =
         Prop.computed __type __id "home_directory_type";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       role = Prop.computed __type __id "role";
       server_id = Prop.computed __type __id "server_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_user
        (aws_transfer_user ?home_directory ?home_directory_type ?id
           ?policy ?tags ?tags_all ?timeouts ~role ~server_id
           ~user_name ~home_directory_mappings ~posix_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?home_directory ?home_directory_type ?id
    ?policy ?tags ?tags_all ?timeouts ~role ~server_id ~user_name
    ~home_directory_mappings ~posix_profile __id =
  let (r : _ Tf_core.resource) =
    make ?home_directory ?home_directory_type ?id ?policy ?tags
      ?tags_all ?timeouts ~role ~server_id ~user_name
      ~home_directory_mappings ~posix_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
