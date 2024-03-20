(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_openid_connect_provider = {
  client_id_list : string prop list;  (** client_id_list *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  thumbprint_list : string prop list;  (** thumbprint_list *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** aws_iam_openid_connect_provider *)

let aws_iam_openid_connect_provider ?id ?tags ?tags_all
    ~client_id_list ~thumbprint_list ~url () :
    aws_iam_openid_connect_provider =
  { client_id_list; id; tags; tags_all; thumbprint_list; url }

type t = {
  arn : string prop;
  client_id_list : string list prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  thumbprint_list : string list prop;
  url : string prop;
}

let make ?id ?tags ?tags_all ~client_id_list ~thumbprint_list ~url
    __id =
  let __type = "aws_iam_openid_connect_provider" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       client_id_list = Prop.computed __type __id "client_id_list";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       thumbprint_list = Prop.computed __type __id "thumbprint_list";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_openid_connect_provider
        (aws_iam_openid_connect_provider ?id ?tags ?tags_all
           ~client_id_list ~thumbprint_list ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~client_id_list
    ~thumbprint_list ~url __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~client_id_list ~thumbprint_list ~url
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
