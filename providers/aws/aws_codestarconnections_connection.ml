(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codestarconnections_connection = {
  host_arn : string prop option; [@option]  (** host_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  provider_type : string prop option; [@option]  (** provider_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_codestarconnections_connection *)

let aws_codestarconnections_connection ?host_arn ?id ?provider_type
    ?tags ?tags_all ~name () : aws_codestarconnections_connection =
  { host_arn; id; name; provider_type; tags; tags_all }

type t = {
  arn : string prop;
  connection_status : string prop;
  host_arn : string prop;
  id : string prop;
  name : string prop;
  provider_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?host_arn ?id ?provider_type ?tags ?tags_all ~name __id =
  let __type = "aws_codestarconnections_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       connection_status =
         Prop.computed __type __id "connection_status";
       host_arn = Prop.computed __type __id "host_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       provider_type = Prop.computed __type __id "provider_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codestarconnections_connection
        (aws_codestarconnections_connection ?host_arn ?id
           ?provider_type ?tags ?tags_all ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?host_arn ?id ?provider_type ?tags ?tags_all
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?host_arn ?id ?provider_type ?tags ?tags_all ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
