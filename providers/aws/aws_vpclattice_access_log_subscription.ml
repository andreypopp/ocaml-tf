(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpclattice_access_log_subscription = {
  destination_arn : string prop;  (** destination_arn *)
  id : string prop option; [@option]  (** id *)
  resource_identifier : string prop;  (** resource_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_vpclattice_access_log_subscription *)

let aws_vpclattice_access_log_subscription ?id ?tags ?tags_all
    ~destination_arn ~resource_identifier () :
    aws_vpclattice_access_log_subscription =
  { destination_arn; id; resource_identifier; tags; tags_all }

type t = {
  arn : string prop;
  destination_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~destination_arn ~resource_identifier
    __id =
  let __type = "aws_vpclattice_access_log_subscription" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       destination_arn = Prop.computed __type __id "destination_arn";
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
       resource_identifier =
         Prop.computed __type __id "resource_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_access_log_subscription
        (aws_vpclattice_access_log_subscription ?id ?tags ?tags_all
           ~destination_arn ~resource_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~destination_arn
    ~resource_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~destination_arn ~resource_identifier
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
