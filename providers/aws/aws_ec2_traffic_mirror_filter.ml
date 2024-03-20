(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_traffic_mirror_filter = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  network_services : string prop list option; [@option]
      (** network_services *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_filter *)

let aws_ec2_traffic_mirror_filter ?description ?id ?network_services
    ?tags ?tags_all () : aws_ec2_traffic_mirror_filter =
  { description; id; network_services; tags; tags_all }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  network_services : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?network_services ?tags ?tags_all __id =
  let __type = "aws_ec2_traffic_mirror_filter" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       network_services =
         Prop.computed __type __id "network_services";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_traffic_mirror_filter
        (aws_ec2_traffic_mirror_filter ?description ?id
           ?network_services ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?network_services ?tags
    ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?network_services ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
