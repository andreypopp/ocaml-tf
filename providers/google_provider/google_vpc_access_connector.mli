(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vpc_access_connector__subnet
type google_vpc_access_connector__timeouts
type google_vpc_access_connector

val google_vpc_access_connector :
  ?ip_cidr_range:string ->
  ?machine_type:string ->
  ?max_throughput:float ->
  ?min_throughput:float ->
  ?timeouts:google_vpc_access_connector__timeouts ->
  name:string ->
  subnet:google_vpc_access_connector__subnet list ->
  string ->
  unit
