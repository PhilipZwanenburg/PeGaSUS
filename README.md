# Petrov-Galerkin Solver for Unstructured Simulations

<table>
	<tr>
		<th>Branch</th>
		<th>Version</th>
		<th>Linux/macOS</th>
		<th>Coverage</th>
		<th>Documentation</th>
	</tr>
	<tr>
		<th>
			<a href="https://github.com/PhilipZwanenburg/PeGaSUS/tree/master">
				master
			</a>
		</th>
		<th>To Do</th>
		<th>
			<a href="https://travis-ci.org/PhilipZwanenburg/PeGaSUS">
				<img src="https://travis-ci.org/PhilipZwanenburg/PeGaSUS.svg?branch=master"
				     title="build status">
			</a>
		</th>
		<th>
			<a href="https://codecov.io/gh/PhilipZwanenburg/PeGaSUS/branch/master">
				<img src="https://codecov.io/gh/PhilipZwanenburg/PeGaSUS/branch/master/graph/badge.svg"
				     title="build status">
			</a>
		</th>
		<th>To Do</th>
	</tr>
</table>


# Overview

This project aims to provide a Finite Element implementation capable of simulating various partial
differential equations on geometrically complex domains using the Petrov-Galerkin method.

The discretization employs an adaptive T-spline approximation basis which allows for exact geometry
representation (as defined according to the reference CAD model) and is motivated by the
IsoGeometric Analysis paradigm.

\todo Add note about unit/integration tests for understanding segments of the code.
\todo Add supported PDEs
\todo Add list of software being used

# License

The code is licensed under the [GNU GPLv3](LICENSE.md).
