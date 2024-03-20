(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_network_insights_path = {
  destination : string prop;  (** destination *)
  destination_ip : string prop option; [@option]
      (** destination_ip *)
  destination_port : float prop option; [@option]
      (** destination_port *)
  id : string prop option; [@option]  (** id *)
  protocol : string prop;  (** protocol *)
  source : string prop;  (** source *)
  source_ip : string prop option; [@option]  (** source_ip *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ec2_network_insights_path *)

let aws_ec2_network_insights_path ?destination_ip ?destination_port
    ?id ?source_ip ?tags ?tags_all ~destination ~protocol ~source ()
    : aws_ec2_network_insights_path =
  {
    destination;
    destination_ip;
    destination_port;
    id;
    protocol;
    source;
    source_ip;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  destination : string prop;
  destination_arn : string prop;
  destination_ip : string prop;
  destination_port : float prop;
  id : string prop;
  protocol : string prop;
  source : string prop;
  source_arn : string prop;
  source_ip : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?destination_ip ?destination_port ?id ?source_ip ?tags
    ?tags_all ~destination ~protocol ~source __id =
  let __type = "aws_ec2_network_insights_path" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       destination = Prop.computed __type __id "destination";
       destination_arn = Prop.computed __type __id "destination_arn";
       destination_ip = Prop.computed __type __id "destination_ip";
       destination_port =
         Prop.computed __type __id "destination_port";
       id = Prop.computed __type __id "id";
       protocol = Prop.computed __type __id "protocol";
       source = Prop.computed __type __id "source";
       source_arn = Prop.computed __type __id "source_arn";
       source_ip = Prop.computed __type __id "source_ip";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_network_insights_path
        (aws_ec2_network_insights_path ?destination_ip
           ?destination_port ?id ?source_ip ?tags ?tags_all
           ~destination ~protocol ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?destination_ip ?destination_port ?id
    ?source_ip ?tags ?tags_all ~destination ~protocol ~source __id =
  let (r : _ Tf_core.resource) =
    make ?destination_ip ?destination_port ?id ?source_ip ?tags
      ?tags_all ~destination ~protocol ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
