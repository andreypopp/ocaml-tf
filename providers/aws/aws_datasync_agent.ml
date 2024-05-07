(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_datasync_agent = {
  activation_key : string prop option; [@option]
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  name : string prop option; [@option]
  private_link_endpoint : string prop option; [@option]
  security_group_arns : string prop list option; [@option]
  subnet_arns : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_endpoint_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_agent) -> ()

let yojson_of_aws_datasync_agent =
  (function
   | {
       activation_key = v_activation_key;
       id = v_id;
       ip_address = v_ip_address;
       name = v_name;
       private_link_endpoint = v_private_link_endpoint;
       security_group_arns = v_security_group_arns;
       subnet_arns = v_subnet_arns;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_endpoint_id = v_vpc_endpoint_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_vpc_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_endpoint_id", arg in
             bnd :: bnds
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
         match v_subnet_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_link_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_link_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
       let bnds =
         match v_activation_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "activation_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datasync_agent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_agent

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_datasync_agent ?activation_key ?id ?ip_address ?name
    ?private_link_endpoint ?security_group_arns ?subnet_arns ?tags
    ?tags_all ?vpc_endpoint_id ?timeouts () : aws_datasync_agent =
  {
    activation_key;
    id;
    ip_address;
    name;
    private_link_endpoint;
    security_group_arns;
    subnet_arns;
    tags;
    tags_all;
    vpc_endpoint_id;
    timeouts;
  }

type t = {
  tf_name : string;
  activation_key : string prop;
  arn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
  private_link_endpoint : string prop;
  security_group_arns : string list prop;
  subnet_arns : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_endpoint_id : string prop;
}

let make ?activation_key ?id ?ip_address ?name ?private_link_endpoint
    ?security_group_arns ?subnet_arns ?tags ?tags_all
    ?vpc_endpoint_id ?timeouts __id =
  let __type = "aws_datasync_agent" in
  let __attrs =
    ({
       tf_name = __id;
       activation_key = Prop.computed __type __id "activation_key";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       name = Prop.computed __type __id "name";
       private_link_endpoint =
         Prop.computed __type __id "private_link_endpoint";
       security_group_arns =
         Prop.computed __type __id "security_group_arns";
       subnet_arns = Prop.computed __type __id "subnet_arns";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_endpoint_id = Prop.computed __type __id "vpc_endpoint_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_agent
        (aws_datasync_agent ?activation_key ?id ?ip_address ?name
           ?private_link_endpoint ?security_group_arns ?subnet_arns
           ?tags ?tags_all ?vpc_endpoint_id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?activation_key ?id ?ip_address ?name
    ?private_link_endpoint ?security_group_arns ?subnet_arns ?tags
    ?tags_all ?vpc_endpoint_id ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?activation_key ?id ?ip_address ?name ?private_link_endpoint
      ?security_group_arns ?subnet_arns ?tags ?tags_all
      ?vpc_endpoint_id ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
