(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_ec2_network_insights_path = {
  id : string prop option; [@option]
  network_insights_path_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_network_insights_path) -> ()

let yojson_of_aws_ec2_network_insights_path =
  (function
   | {
       id = v_id;
       network_insights_path_id = v_network_insights_path_id;
       tags = v_tags;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_insights_path_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_insights_path_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ec2_network_insights_path ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_network_insights_path

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_ec2_network_insights_path ?id ?network_insights_path_id ?tags
    ~filter () : aws_ec2_network_insights_path =
  { id; network_insights_path_id; tags; filter }

type t = {
  tf_name : string;
  arn : string prop;
  destination : string prop;
  destination_arn : string prop;
  destination_ip : string prop;
  destination_port : float prop;
  id : string prop;
  network_insights_path_id : string prop;
  protocol : string prop;
  source : string prop;
  source_arn : string prop;
  source_ip : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?network_insights_path_id ?tags ~filter __id =
  let __type = "aws_ec2_network_insights_path" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       destination = Prop.computed __type __id "destination";
       destination_arn = Prop.computed __type __id "destination_arn";
       destination_ip = Prop.computed __type __id "destination_ip";
       destination_port =
         Prop.computed __type __id "destination_port";
       id = Prop.computed __type __id "id";
       network_insights_path_id =
         Prop.computed __type __id "network_insights_path_id";
       protocol = Prop.computed __type __id "protocol";
       source = Prop.computed __type __id "source";
       source_arn = Prop.computed __type __id "source_arn";
       source_ip = Prop.computed __type __id "source_ip";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_network_insights_path
        (aws_ec2_network_insights_path ?id ?network_insights_path_id
           ?tags ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?network_insights_path_id ?tags ~filter
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?network_insights_path_id ?tags ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
