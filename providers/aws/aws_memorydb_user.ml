(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_mode = {
  passwords : string prop list;  (** passwords *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** authentication_mode *)

type aws_memorydb_user = {
  access_string : string prop;  (** access_string *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_name : string prop;  (** user_name *)
  authentication_mode : authentication_mode list;
}
[@@deriving yojson_of]
(** aws_memorydb_user *)

let authentication_mode ~passwords ~type_ () : authentication_mode =
  { passwords; type_ }

let aws_memorydb_user ?id ?tags ?tags_all ~access_string ~user_name
    ~authentication_mode () : aws_memorydb_user =
  {
    access_string;
    id;
    tags;
    tags_all;
    user_name;
    authentication_mode;
  }

type t = {
  access_string : string prop;
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
}

let make ?id ?tags ?tags_all ~access_string ~user_name
    ~authentication_mode __id =
  let __type = "aws_memorydb_user" in
  let __attrs =
    ({
       access_string = Prop.computed __type __id "access_string";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       minimum_engine_version =
         Prop.computed __type __id "minimum_engine_version";
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
      yojson_of_aws_memorydb_user
        (aws_memorydb_user ?id ?tags ?tags_all ~access_string
           ~user_name ~authentication_mode ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~access_string ~user_name
    ~authentication_mode __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~access_string ~user_name
      ~authentication_mode __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
