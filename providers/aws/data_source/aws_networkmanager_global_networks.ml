(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_networkmanager_global_networks = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_global_networks) -> ()

let yojson_of_aws_networkmanager_global_networks =
  (function
   | { id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_global_networks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_global_networks

[@@@deriving.end]

let aws_networkmanager_global_networks ?id ?tags () :
    aws_networkmanager_global_networks =
  { id; tags }

type t = {
  tf_name : string;
  id : string prop;
  ids : string list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags __id =
  let __type = "aws_networkmanager_global_networks" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_global_networks
        (aws_networkmanager_global_networks ?id ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags __id =
  let (r : _ Tf_core.resource) = make ?id ?tags __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
