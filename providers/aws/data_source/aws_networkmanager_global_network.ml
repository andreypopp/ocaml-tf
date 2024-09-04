(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_networkmanager_global_network = {
  global_network_id : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_global_network) -> ()

let yojson_of_aws_networkmanager_global_network =
  (function
   | {
       global_network_id = v_global_network_id;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_global_network_id
         in
         ("global_network_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_global_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_global_network

[@@@deriving.end]

let aws_networkmanager_global_network ?id ?tags ~global_network_id ()
    : aws_networkmanager_global_network =
  { global_network_id; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ~global_network_id __id =
  let __type = "aws_networkmanager_global_network" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_global_network
        (aws_networkmanager_global_network ?id ?tags
           ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~global_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~global_network_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
