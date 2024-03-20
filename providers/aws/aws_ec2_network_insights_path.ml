(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ec2_network_insights_path = {
  destination : string prop;
  destination_ip : string prop option; [@option]
  destination_port : float prop option; [@option]
  id : string prop option; [@option]
  protocol : string prop;
  source : string prop;
  source_ip : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_network_insights_path) -> ()

let yojson_of_aws_ec2_network_insights_path =
  (function
   | {
       destination = v_destination;
       destination_ip = v_destination_ip;
       destination_port = v_destination_port;
       id = v_id;
       protocol = v_protocol;
       source = v_source;
       source_ip = v_source_ip;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "destination_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : aws_ec2_network_insights_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_network_insights_path

[@@@deriving.end]

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
