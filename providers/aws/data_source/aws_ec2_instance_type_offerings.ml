(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ec2_instance_type_offerings = {
  id : string prop option; [@option]
  location_type : string prop option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ec2_instance_type_offerings) -> ()

let yojson_of_aws_ec2_instance_type_offerings =
  (function
   | {
       id = v_id;
       location_type = v_location_type;
       filter = v_filter;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_location_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location_type", arg in
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
    : aws_ec2_instance_type_offerings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ec2_instance_type_offerings

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ec2_instance_type_offerings ?id ?location_type ?timeouts
    ~filter () : aws_ec2_instance_type_offerings =
  { id; location_type; filter; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  instance_types : string list prop;
  location_type : string prop;
  location_types : string list prop;
  locations : string list prop;
}

let make ?id ?location_type ?timeouts ~filter __id =
  let __type = "aws_ec2_instance_type_offerings" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       instance_types = Prop.computed __type __id "instance_types";
       location_type = Prop.computed __type __id "location_type";
       location_types = Prop.computed __type __id "location_types";
       locations = Prop.computed __type __id "locations";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_instance_type_offerings
        (aws_ec2_instance_type_offerings ?id ?location_type ?timeouts
           ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location_type ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location_type ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
